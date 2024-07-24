import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../data/network/shorts_api.dart';
import 'p_is_playing.dart'; // isPlayingProvider의 경로를 맞게 조정하세요

class VideoSwipeScreen extends ConsumerStatefulWidget {
  const VideoSwipeScreen({Key? key}) : super(key: key);

  @override
  _VideoSwipeScreenState createState() => _VideoSwipeScreenState();
}

class _VideoSwipeScreenState extends ConsumerState<VideoSwipeScreen> with AutomaticKeepAliveClientMixin {
  final PageController _pageController = PageController();
  final List<String> _videoAssets = [
    'assets/video/video01.mp4',
    'assets/video/video02.mp4',
    'assets/video/video01.mp4',
    'assets/video/video02.mp4',
  ];

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
    final currentController = VideoPlayerController.asset(_videoAssets[currentPage]);

    if (isPlaying) {
      currentController.play();
    } else {
      currentController.pause();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final isPlaying = ref.watch(isPlayingProvider);

    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        itemCount: _videoAssets.length,
        itemBuilder: (context, index) {
          final videoPlayerController = VideoPlayerController.asset(_videoAssets[index]);
          return FutureBuilder(
            future: videoPlayerController.initialize(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return VideoPlayerScreen(
                  controller: videoPlayerController,
                  isPlaying: isPlaying,
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class VideoPlayerScreen extends StatefulWidget {
  final VideoPlayerController controller;
  final bool isPlaying;

  VideoPlayerScreen({required this.controller, required this.isPlaying});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  @override
  void initState() {
    super.initState();
    if (widget.isPlaying) {
      widget.controller.play();
      widget.controller.setLooping(true);
    } else {
      widget.controller.pause();
    }
  }

  @override
  void didUpdateWidget(VideoPlayerScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isPlaying != widget.isPlaying) {
      if (widget.isPlaying) {
        widget.controller.play();
      } else {
        widget.controller.pause();
      }
    }
  }

  void _togglePlayPause() {
    setState(() {
      if (widget.controller.value.isPlaying) {
        widget.controller.pause();
      } else {
        widget.controller.play();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: widget.controller.value.size.width,
              height: widget.controller.value.size.height,
              child: VideoPlayer(widget.controller),
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
          bottom: 100,
          right: 20,
          child: Column(
            children: [
              Column(children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.favorite_border_rounded,
                    color: Colors.white,
                    size: 30.0,
                  ).pSymmetric(v: 5),
                ),
                Text('1230', style: TextStyle(color: Colors.white)),
              ]),
              SizedBox(height: 10),
              Column(children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.chat_bubble_outline_rounded,
                    color: Colors.white,
                    size: 30.0,
                  ).pSymmetric(v: 5),
                ),
                Text('1230', style: TextStyle(color: Colors.white)),
              ]),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }
}
