import 'dart:ui' as ui;
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/video_player.dart';
import '../../../../../common/widget/w_profile_image.dart';
import '../../../../../data/entity/shorts/vo_shorts_read.dart';
import '../../../../../data/memory/shorts/p_shorts_read.dart';
import '../../../../../data/network/shorts_api.dart';
import 'p_is_playing.dart'; // isPlayingProvider의 경로를 맞게 조정하세요

class VideoSwipeScreen extends ConsumerStatefulWidget {
  const VideoSwipeScreen({Key? key}) : super(key: key);

  @override
  _VideoSwipeScreenState createState() => _VideoSwipeScreenState();
}

class _VideoSwipeScreenState extends ConsumerState<VideoSwipeScreen>
    with AutomaticKeepAliveClientMixin {
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    ref.read(shortsApiProvider).readShorts(ref);
  }

  @override
  void didUpdateWidget(VideoSwipeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    _togglePlayPause(ref.read(isPlayingProvider));
  }

  void _togglePlayPause(bool isPlaying) {
    final currentPage = _pageController.page?.toInt() ?? 0;
    final currentController = VideoPlayerController.network(
        ref.read(shortsReadProvider).shortsList[currentPage].videoUrl);

    if (isPlaying) {
      currentController.play();
    } else {
      currentController.pause();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final shortsRead = ref.watch(shortsReadProvider);
    final isPlaying = ref.watch(isPlayingProvider);

    return Scaffold(
      body: shortsRead.shortsList.isEmpty
          ? Center(child: CircularProgressIndicator())
          : PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        itemCount: shortsRead.shortsList.length,
        itemBuilder: (context, index) {
          final videoUrl = shortsRead.shortsList[index].videoUrl;
          return VideoPlayerScreen(
            videoUrl: videoUrl,
            isPlaying: isPlaying,
            shorts: shortsRead.shortsList[index],
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;
  final bool isPlaying;
  final Shorts shorts;

  VideoPlayerScreen({
    required this.videoUrl,
    required this.isPlaying,
    required this.shorts,
  });

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> with TickerProviderStateMixin {
  late VideoPlayerController _controller;
  bool _isExpanded = false; // 확장 상태를 관리하는 변수

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        if (widget.isPlaying) {
          _controller.play();
        }
        _controller.setLooping(true);
        setState(() {}); // Update the UI after initialization
      });
  }

  @override
  void didUpdateWidget(VideoPlayerScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isPlaying != widget.isPlaying) {
      if (widget.isPlaying) {
        _controller.play();
      } else {
        _controller.pause();
      }
    }
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
      } else {
        _controller.play();
      }
    });
  }

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final contentText = '${widget.shorts.content}';
    final textStyle = TextStyle(color: Colors.white);

    return Stack(
      children: [
        Positioned.fill(
          child: _controller.value.isInitialized
              ? FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: _controller.value.size.width,
              height: _controller.value.size.height,
              child: VideoPlayer(_controller),
            ),
          )
              : Container(
            color: Colors.black, // 검은 배경
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.2),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: _togglePlayPause,
          child: Container(
            color: Colors.transparent,
          ),
        ),
        Positioned(
          bottom: 120,
          right: 20,
          child: Column(
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.white,
                      size: 30.0,
                    ).pSymmetric(v: 5),
                  ),
                  Text(
                    '${widget.shorts.likes}',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.chat_bubble_outline_rounded,
                      color: Colors.white,
                      size: 30.0,
                    ).pSymmetric(v: 5),
                  ),
                  Text(
                    '${widget.shorts.commentNum}',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
        if (_isExpanded)
          Container(
            color: Colors.black.withOpacity(0.5), // 어두운 배경
          ),
        Positioned(
          bottom: 100,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ProfileImage(
                      photoUrl: widget.shorts.account.photoUrl,
                      width: 35,
                      height: 35)
                      .pOnly(right: 10),
                  '${widget.shorts.account.nickname}'.text.white.make()
                ],
              ),
              GestureDetector(
                onTap: _toggleExpand,
                child: AnimatedSize(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  child: Container(
                    width: 300,
                    child: Text(
                      contentText*20,
                      style: textStyle,
                      overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                      maxLines: _isExpanded ? null : 1,
                      textDirection: ui.TextDirection.ltr,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
