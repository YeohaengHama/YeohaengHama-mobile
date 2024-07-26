import 'package:fast_app_base/screen/client/main/tab/shorts/w_video_player.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/video_player.dart';
import 'package:fast_app_base/common/common.dart';
import '../../../../../common/widget/w_profile_image.dart';
import '../../../../../data/entity/shorts/vo_shorts_read.dart';
import '../../../../../data/memory/shorts/p_shorts_read.dart';
import '../../../../../data/network/shorts_api.dart';
import 'p_is_playing.dart'; // isPlayingProvider의 경로를 맞게 조정하세요
import 'dart:ui' as ui;

class VideoSwipeScreen extends ConsumerStatefulWidget {
  const VideoSwipeScreen({Key? key}) : super(key: key);

  @override
  _VideoSwipeScreenState createState() => _VideoSwipeScreenState();
}

class _VideoSwipeScreenState extends ConsumerState<VideoSwipeScreen> with AutomaticKeepAliveClientMixin {
  final PageController _pageController = PageController();
  final Map<int, VideoPlayerController> _videoControllers = {};
  final int _preloadCount = 2; // 앞뒤로 로드할 비디오 수

  @override
  void initState() {
    super.initState();
    ref.read(shortsApiProvider).readShorts(ref);
    _pageController.addListener(_onPageChanged);
  }

  void _onPageChanged() {
    final currentPage = _pageController.page?.toInt() ?? 0;

    // 현재 페이지에 대한 비디오를 멈추고, 재생 위치를 초기화합니다.
    _videoControllers.forEach((index, controller) {
      if (index != currentPage) {
        controller.pause();
        controller.seekTo(Duration.zero);
      } else {
        controller.play();
      }
    });

    // 페이지에 맞게 비디오를 프리로드합니다.
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

    return Scaffold(
      backgroundColor: Colors.black,
      body: shortsRead.shortsList.isEmpty
          ? Center(child: CircularProgressIndicator())
          : PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        itemCount: shortsRead.shortsList.length,
        itemBuilder: (context, index) {
          // 현재 페이지와 앞뒤로 비디오 로드
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
          // 페이지가 변경될 때 불필요한 비디오 컨트롤러를 제거합니다.
          _videoControllers.removeWhere((key, value) => key < index - _preloadCount || key > index + _preloadCount);
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
