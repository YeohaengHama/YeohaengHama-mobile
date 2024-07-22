// shorts_fragment.dart
import 'package:fast_app_base/screen/client/main/tab/shorts/s_video_recording.dart';
import 'package:fast_app_base/screen/client/main/tab/shorts/s_video_swipe.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:nav_hooks/nav.dart';

class ShortsFragment extends StatelessWidget {
  const ShortsFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double iconSize = 30.0;

    return Scaffold(
      body: Stack(
        children: [
          VideoSwipeScreen(), // VideoSwipeScreen은 본래의 비디오 스와이프 화면으로 대체해주세요
          Positioned(
            top: 60,
            right: 20,
            child: GestureDetector(
              onTap: () async {
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
