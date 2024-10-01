// shorts_fragment.dart
import 'package:fast_app_base/screen/client/main/tab/shorts/s_video_recording.dart';
import 'package:fast_app_base/screen/client/main/tab/shorts/s_video_swipe.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nav_hooks/nav.dart';

import 'p_is_playing.dart';


class ShortsFragment extends ConsumerWidget {
  const ShortsFragment({Key? super.key, this.isPlaying = false});
  final bool isPlaying;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const double iconSize = 30.0;
    final isPlayingProviderNoti = ref.read(isPlayingProvider.notifier);
    return Scaffold(
      body: Stack(
        children: [
          const VideoSwipeScreen(), // VideoSwipeScreen은 본래의 비디오 스와이프 화면으로 대체해주세요
          Positioned(
            top: 60,
            right: 20,
            child: GestureDetector(
              onTap: () async {
                isPlayingProviderNoti.setPlaying(false);
                List<CameraDescription> cameras = await availableCameras();
                Nav.push(VideoRecordingScreen(descriptions: cameras));
              },
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
                size: iconSize,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
