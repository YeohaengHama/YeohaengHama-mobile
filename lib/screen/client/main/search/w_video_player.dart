import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/search/provider/bottom_nav_black.dart';
import 'package:fast_app_base/screen/client/main/search/provider/is_playing_shots.dart';
import 'package:fast_app_base/screen/client/main/search/s_itinerary_detail.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/video_player.dart';
import '../../../../../data/entity/shorts/vo_shorts_read.dart';
import '../../../../../data/network/shorts_api.dart';
import 'dart:ui' as ui;
import '../../../../../common/widget/w_profile_image.dart';
import '../../../../../data/memory/shorts/p_get_itinerary.dart';
import '../tab/information /search/provider/is_loading_provider.dart';
import '../tab/shorts/comment/s_comment.dart';
import '../tab/shorts/p_bottom_nav_visible.dart';
import '../tab/shorts/p_is_playing.dart';

class VideoPlayerScreen extends ConsumerStatefulWidget {
  final String videoUrl;
  final bool isPlaying;
  final Shorts shorts;
  final VideoPlayerController? controller;
  final ValueChanged<VideoPlayerController>? onControllerCreated;

  VideoPlayerScreen({
    required this.videoUrl,
    required this.isPlaying,
    required this.shorts,
    this.controller,
    this.onControllerCreated,
  });

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends ConsumerState<VideoPlayerScreen>
    with TickerProviderStateMixin {
  late VideoPlayerController _controller;
  bool _isExpanded = false;
  bool _isPlaying = false;
  FocusNode _focusNode = FocusNode();
  bool _textFieldFocused = false;

  @override
  void initState() {
    super.initState();

    if (widget.controller != null) {
      _controller = widget.controller!;
    } else {
      _controller = VideoPlayerController.network(widget.videoUrl)
        ..initialize().then((_) {
          if (widget.isPlaying) {
            _controller.play();
            _isPlaying = true;
          }
          _controller.setLooping(true);
          setState(() {});
          if (widget.onControllerCreated != null) {
            widget.onControllerCreated!(_controller);
          }
        }).catchError((error) {
          print('Error initializing video player: $error');
        });
    }

    _focusNode.addListener(() {
      setState(() {
        _textFieldFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void didUpdateWidget(VideoPlayerScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isPlaying != oldWidget.isPlaying && !_textFieldFocused) {
      if (widget.isPlaying) {
        _controller.play();
      } else {
        _controller.pause();
      }
    }
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    _focusNode.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    if (!_textFieldFocused) {
      setState(() {
        if (_controller.value.isPlaying) {
          _controller.pause();
          _isPlaying = false;
        } else {
          _controller.play();
          _isPlaying = true;
        }
      });
    }
  }

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    final contentText = '${widget.shorts.content}';
    final titleText = '${widget.shorts.title}';
    final textStyle = TextStyle(color: Colors.white);
    final _shortsApiProvider = ref.read(shortsApiProvider);
    final _getItineraryProvider =
        ref.watch(getItineraryProvider.notifier).state;
    return GestureDetector(
      onTap: _togglePlayPause,
      child: Stack(
        children: [
          Positioned.fill(
            child: _controller.value.isInitialized
                ? LayoutBuilder(
                    builder: (context, constraints) {
                      final videoRatio = _controller.value.size.width /
                          _controller.value.size.height;
                      final fit = videoRatio > 0.5 && videoRatio < 0.6
                          ? BoxFit.cover
                          : BoxFit.contain;
                      return FittedBox(
                        fit: fit,
                        child: SizedBox(
                          width: _controller.value.size.width,
                          height: _controller.value.size.height,
                          child: VideoPlayer(_controller),
                        ),
                      );
                    },
                  )
                : Container(color: Colors.black),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black.withOpacity(0.2)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 90,
            right: 20,
            child: Column(
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.favorite_border_rounded,
                              color: Colors.white, size: 30.0)
                          .pSymmetric(v: 5),
                    ),
                    Text('${widget.shorts.likes}',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        final isBottomNavBarVisible =
                            ref.read(bottomNavBarVisibleProvider.notifier);
                        isBottomNavBarVisible.hide();

                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return RoundedContainer(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 15),
                              radius: 15,
                              child: FractionallySizedBox(
                                heightFactor: 0.65,
                                child: DraggableScrollableSheet(
                                  initialChildSize: 1.0,
                                  minChildSize: 1.0,
                                  maxChildSize: 1.0,
                                  expand: true,
                                  builder: (BuildContext context,
                                      ScrollController scrollController) {
                                    return CommentScreen(
                                        scrollController: scrollController,
                                        shortsId: widget.shorts.shortsId);
                                  },
                                ),
                              ),
                            );
                          },
                        ).whenComplete(() {
                          isBottomNavBarVisible.show();
                        });
                      },
                      child: Icon(Icons.chat_bubble_outline_rounded,
                              color: Colors.white, size: 30.0)
                          .pSymmetric(v: 5),
                    ),
                    Text('${widget.shorts.commentNum}',
                        style: TextStyle(color: Colors.white)),
                    SizedBox(height: 10),
                    Tap(
                      onTap: () async {
                        // 로딩 상태 시작

                        // 데이터를 불러옴
                        await _shortsApiProvider.getItinerary(ref,
                            widget.shorts.itinerary.itineraryId.toString());

                        // 데이터를 불러왔을 때만 화면 이동
                        final itinerary = ref.read(getItineraryProvider);
                        if (itinerary != null) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailItineraryScreen(
                                  itinerary, widget.shorts.title),
                            ),
                          );

                          // 필요한 상태 업데이트
                          ref
                              .read(BottomNavBlackProvider.notifier)
                              .setBlack(false);
                          ref
                              .read(isPlayingShortsProvider.notifier)
                              .setPlayingShorts(false);
                        }

                        // 로딩 상태 종료
                      },
                      child: Icon(Icons.calendar_today_outlined,
                              color: Colors.white, size: 27.0)
                          .pSymmetric(v: 5),
                    )
                  ],
                ),
              ],
            ),
          ),
          if (_isExpanded)
            Container(
              color: Colors.black.withOpacity(0.5),
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
                      height: 35,
                    ).pOnly(right: 10),
                    '${widget.shorts.account.nickname}'.text.white.make(),
                  ],
                ),
                SizedBox(height: 5),
                GestureDetector(
                  onTap: _toggleExpand,
                  child: AnimatedSize(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: Container(
                      width: 300,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            titleText,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            contentText,
                            style: textStyle,
                            overflow: _isExpanded
                                ? TextOverflow.visible
                                : TextOverflow.ellipsis,
                            maxLines: _isExpanded ? null : 1,
                            textDirection: ui.TextDirection.ltr,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}