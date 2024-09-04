import 'package:fast_app_base/screen/client/main/search/provider/bottom_nav_black.dart';
import 'package:fast_app_base/screen/client/main/tab/shorts/w_video_player.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/video_player.dart';
import 'package:fast_app_base/common/common.dart';
import '../../../../../common/widget/w_profile_image.dart';
import '../../../../../data/entity/shorts/vo_shorts_read.dart';
import '../../../../../data/memory/shorts/p_shorts_read.dart';
import '../../../../../data/network/shorts_api.dart';
import 'dart:ui' as ui;

import '../tab/shorts/p_is_playing.dart';

class VideoSwipeScreen extends ConsumerStatefulWidget {
  final int initialIndex; // 추가된 부분

  const VideoSwipeScreen({Key? key, required this.initialIndex}) : super(key: key);

  @override
  _VideoSwipeScreenState createState() => _VideoSwipeScreenState();
}

class _VideoSwipeScreenState extends ConsumerState<VideoSwipeScreen>
    with AutomaticKeepAliveClientMixin {
  final PageController _pageController = PageController();
  final Map<int, VideoPlayerController> _videoControllers = {};
  final int _preloadCount = 5;

  @override
  void initState() {
    super.initState();
    ref.read(shortsApiProvider).readShorts(ref);
    _pageController.addListener(_onPageChanged);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _pageController.jumpToPage(widget.initialIndex); // 생성자에서 전달받은 initialIndex로 페이지 이동
    });
  }

  void _onPageChanged() {
    final currentPage = _pageController.page?.toInt() ?? 0;

    _videoControllers.forEach((index, controller) {
      if (index != currentPage) {
        controller.pause();
        controller.seekTo(Duration.zero);
      } else {
        controller.play();
      }
    });

    _preloadVideos(currentPage);
  }

  void _preloadVideos(int index) {
    final shortsList = ref.read(shortsReadProvider).shortsList;
    for (int i = -_preloadCount; i <= _preloadCount; i++) {
      final preloadIndex = index + i;
      if (preloadIndex >= 0 && preloadIndex < shortsList.length) {
        final videoUrl = shortsList[preloadIndex].videoUrl;
        if (!_videoControllers.containsKey(preloadIndex)) {
          final controller = VideoPlayerController.network(videoUrl)
            ..initialize().then((_) {
              if (mounted) {
                setState(() {});
              }
            }).catchError((error) {
              print('Error initializing video player: $error');
            });
          _videoControllers[preloadIndex] = controller;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final shortsRead = ref.watch(shortsReadProvider);
    final isPlaying = ref.watch(isPlayingProvider);
    final isBlack = ref.read(BottomNavBlackProvider.notifier);

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          shortsRead.shortsList.isEmpty
              ? Center(child: CircularProgressIndicator())
              : PageView.builder(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            itemCount: shortsRead.shortsList.length,
            itemBuilder: (context, index) {
              _preloadVideos(index);
              return VideoPlayerScreen(
                videoUrl: shortsRead.shortsList[index].videoUrl,
                isPlaying: isPlaying,
                shorts: shortsRead.shortsList[index],
                controller: _videoControllers[index],
                onControllerCreated: (controller) {
                  _videoControllers[index] = controller;
                },
              );
            },
            onPageChanged: (index) {
              _videoControllers.removeWhere((key, value) =>
              key < index - _preloadCount ||
                  key > index + _preloadCount);
              _onPageChanged();
            },
          ),
          Positioned(
            top: 60,
            left: 20,
            child: GestureDetector(
              onTap: () async {
                isBlack.setBlack(false);
                Nav.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _videoControllers.forEach((index, controller) {
      controller.dispose();
    });
    _pageController.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}

// import 'package:fast_app_base/screen/client/main/tab/shorts/w_video_player.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:video_player/video_player.dart';
// import 'package:fast_app_base/common/common.dart';
// import 'package:fast_app_base/screen/client/main/tab/shorts/comment/s_comment.dart';
// import '../../../../../common/widget/w_profile_image.dart';
// import '../../../../../data/entity/shorts/vo_shorts_read.dart';
// import '../../../../../data/memory/shorts/p_shorts_read.dart';
// import '../../../../../data/network/shorts_api.dart';
// import 'p_bottom_nav_visible.dart';
// import 'p_is_playing.dart'; // isPlayingProvider의 경로를 맞게 조정하세요
// import 'dart:ui' as ui;
//
// class VideoSwipeScreen extends ConsumerStatefulWidget {
//   const VideoSwipeScreen({Key? key}) : super(key: key);
//
//   @override
//   _VideoSwipeScreenState createState() => _VideoSwipeScreenState();
// }
//
// class _VideoSwipeScreenState extends ConsumerState<VideoSwipeScreen> with AutomaticKeepAliveClientMixin {
//   final PageController _pageController = PageController();
//
//   @override
//   void initState() {
//     super.initState();
//     ref.read(shortsApiProvider).readShorts(ref);
//     _pageController.addListener(_onPageChanged);
//   }
//
//   void _onPageChanged() {
//     final currentPage = _pageController.page?.toInt() ?? 0;
//     // 현재 페이지에 대한 비디오 로딩 로직을 주석 처리
//     // _preloadVideos(currentPage);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     super.build(context);
//     final shortsRead = ref.watch(shortsReadProvider);
//     final isPlaying = ref.watch(isPlayingProvider);
//
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: shortsRead.shortsList.isEmpty
//           ? Center(child: CircularProgressIndicator())
//           : PageView.builder(
//         controller: _pageController,
//         scrollDirection: Axis.vertical,
//         itemCount: shortsRead.shortsList.length,
//
//         itemBuilder: (context, index) {
//           // 비디오 로딩 부분을 주석 처리
//           // _preloadVideos(index);
//           return VideoPlayerScreen(
//             videoUrl: shortsRead.shortsList[index].videoUrl,
//             isPlaying: isPlaying,
//             shorts: shortsRead.shortsList[index],
//             controller: null, // 컨트롤러를 null로 설정하여 비디오 로딩 방지
//             onControllerCreated: null, // 비디오 컨트롤러 생성 콜백 제거
//           );
//         },
//         onPageChanged: (index) {
//           // 불필요한 비디오 컨트롤러 제거 로직을 주석 처리
//           // _videoControllers.removeWhere((key, value) => key < index - _preloadCount || key > index + _preloadCount);
//         },
//
//       ),
//     );
//   }
//
//   @override
//   bool get wantKeepAlive => true;
// }
// class VideoPlayerScreen extends ConsumerStatefulWidget {
//   final String videoUrl;
//   final bool isPlaying;
//   final Shorts shorts;
//   final VideoPlayerController? controller;
//   final ValueChanged<VideoPlayerController>? onControllerCreated;
//
//   VideoPlayerScreen({
//     required this.videoUrl,
//     required this.isPlaying,
//     required this.shorts,
//     this.controller,
//     this.onControllerCreated,
//   });
//
//   @override
//   _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
// }
//
// class _VideoPlayerScreenState extends ConsumerState<VideoPlayerScreen> with TickerProviderStateMixin {
//   late VideoPlayerController _controller;
//   bool _isExpanded = false;
//   bool _isPlaying = false;
//
//   @override
//   void initState() {
//     super.initState();
//     // 비디오 컨트롤러 초기화 로직을 주석 처리
//     // _controller = widget.controller ?? VideoPlayerController.network(widget.videoUrl)
//     //   ..initialize().then((_) {
//     //     if (widget.isPlaying) {
//     //       _controller.play();
//     //     }
//     //     _controller.setLooping(true);
//     //     setState(() {});
//     //     if (widget.onControllerCreated != null) {
//     //       widget.onControllerCreated!(_controller);
//     //     }
//     //   }).catchError((error) {
//     //     print('Error initializing video player: $error');
//     //   });
//   }
//
//   @override
//   void didUpdateWidget(VideoPlayerScreen oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     // 비디오 재생 상태 업데이트 로직을 주석 처리
//     // if (widget.isPlaying != oldWidget.isPlaying) {
//     //   if (widget.isPlaying) {
//     //     _controller.play();
//     //   } else {
//     //     _controller.pause();
//     //   }
//     // }
//   }
//
//   @override
//   void dispose() {
//     // 비디오 컨트롤러 해제 로직을 주석 처리
//     // if (widget.controller == null) {
//     //   _controller.dispose();
//     // }
//     super.dispose();
//   }
//
//   void _togglePlayPause() {
//     setState(() {
//       // 비디오 재생/일시 정지 로직을 주석 처리
//       // if (_controller.value.isPlaying) {
//       //   _controller.pause();
//       //   _isPlaying = false;
//       // } else {
//       //   _controller.play();
//       //   _isPlaying = true;
//       // }
//     });
//   }
//
//   void _toggleExpand() {
//     setState(() {
//       _isExpanded = !_isExpanded;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final contentText = '${widget.shorts.content}';
//     final textStyle = TextStyle(color: Colors.white);
//
//     void _onCommentButtonTap() {
//       final isBottomNavBarVisible = ref.read(bottomNavBarVisibleProvider.notifier);
//       isBottomNavBarVisible.hide();
//
//       showModalBottomSheet(
//         context: context,
//         isScrollControlled: true,
//         builder: (BuildContext context) {
//           return RoundedContainer(
//             padding: EdgeInsets.only(top:10),
//             radius: 15,
//             child: FractionallySizedBox(
//               heightFactor: 0.65,
//               child: DraggableScrollableSheet(
//                 initialChildSize: 1.0,
//                 minChildSize: 1.0,
//                 maxChildSize: 1.0,
//                 expand: true,
//                 builder: (BuildContext context, ScrollController scrollController) {
//                   return CommentScreen(scrollController: scrollController, shortsId: widget.shorts.shortsId);
//                 },
//               ),
//             ),
//           );
//         },
//       ).whenComplete(() {
//         // When the bottom sheet is closed, restore the bottom navigation bar visibility
//         isBottomNavBarVisible.show();
//       });
//     }
//
//     return GestureDetector(
//       onTap: _togglePlayPause,
//       child: Stack(
//         children: [
//           Positioned.fill(
//             child: Container(
//               color: Colors.black,
//             ),
//           ),
//           Positioned.fill(
//             child: Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     Colors.transparent,
//                     Colors.black.withOpacity(0.2),
//                   ],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             bottom: 120,
//             right: 20,
//             child: Column(
//               children: [
//                 Column(
//                   children: [
//                     GestureDetector(
//                       onTap: () {},
//                       child: Icon(
//                         Icons.favorite_border_rounded,
//                         color: Colors.white,
//                         size: 30.0,
//                       ).pSymmetric(v: 5),
//                     ),
//                     Text(
//                       '${widget.shorts.likes}',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 10),
//                 Column(
//                   children: [
//                     GestureDetector(
//                       onTap: _onCommentButtonTap,
//                       child: Icon(
//                         Icons.chat_bubble_outline_rounded,
//                         color: Colors.white,
//                         size: 30.0,
//                       ).pSymmetric(v: 5),
//                     ),
//                     Text(
//                       '${widget.shorts.commentNum}',
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           if (_isExpanded)
//             Container(
//               color: Colors.black.withOpacity(0.5),
//             ),
//           Positioned(
//             bottom: 100,
//             left: 20,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     ProfileImage(
//                       photoUrl: widget.shorts.account.photoUrl,
//                       width: 35,
//                       height: 35,
//                     ).pOnly(right: 10),
//                     '${widget.shorts.account.nickname}'.text.white.make()
//                   ],
//                 ),
//                 GestureDetector(
//                   onTap: _toggleExpand,
//                   child: AnimatedSize(
//                     duration: Duration(milliseconds: 300),
//                     curve: Curves.easeInOut,
//                     child: Container(
//                       width: 300,
//                       child: Text(
//                         contentText * 20,
//                         style: textStyle,
//                         overflow: _isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
//                         maxLines: _isExpanded ? null : 1,
//                         textDirection: ui.TextDirection.ltr,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
//