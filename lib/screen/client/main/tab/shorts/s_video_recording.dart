import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fast_app_base/screen/client/main/tab/shorts/s_video_editor.dart';
class VideoRecordingScreen extends StatefulWidget {
  final List<CameraDescription> descriptions;

  const VideoRecordingScreen({Key? key, required this.descriptions}) : super(key: key);

  @override
  _VideoRecordingScreenState createState() => _VideoRecordingScreenState();
}

class _VideoRecordingScreenState extends State<VideoRecordingScreen>
    with WidgetsBindingObserver, SingleTickerProviderStateMixin {
  late CameraController controller;
  late Future<void> initializeControllerFuture;
  bool isRecording = false;
  late String filePath;
  Timer? timer;
  int recordingSeconds = 0;
  VideoPlayerController? videoPlayerController;
  File? firstVideoFile;
  final ImagePicker _picker = ImagePicker();
  XFile? _pickedVideo;
  bool hasRecordedVideo = false;
  bool isPaused = false;

  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    controller = CameraController(
      widget.descriptions[0],
      ResolutionPreset.high,
    );
    initializeControllerFuture = initializeCamera();
    WidgetsBinding.instance?.addObserver(this);
    loadFirstGalleryVideoThumbnail();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 60),
    );

    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });

    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        stopRecording();
      }
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && isRecording) {
      startTimer();
    } else {
      stopTimer();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    stopTimer();
    _animationController.dispose();
    WidgetsBinding.instance?.removeObserver(this);
    videoPlayerController?.dispose();
    super.dispose();
  }

  Future<void> initializeCamera() async {
    try {
      await controller.initialize();
      setState(() {});
    } catch (e) {
      print('카메라 초기화 오류: $e');
    }
  }

  Future<void> startRecording() async {
    if (!controller.value.isRecordingVideo) {
      try {
        final directory = await getTemporaryDirectory();
        filePath = '${directory.path}/${DateTime.now()}.mp4';
        await controller.startVideoRecording();
        setState(() {
          isRecording = true;
          hasRecordedVideo = true;
        });
        startTimer();
        _animationController.forward();
      } catch (e) {
        print('비디오 녹화 시작 오류: $e');
      }
    }
  }

  Future<void> stopRecording() async {
    if (controller.value.isRecordingVideo) {
      try {
        final videoFile = await controller.stopVideoRecording();
        setState(() {
          isRecording = false;
          recordingSeconds = 0;
          isPaused = false;
        });
        stopTimer();
        await saveVideoToGallery(videoFile);
        loadFirstGalleryVideoThumbnail();
        _animationController.reset();
      } catch (e) {
        print('비디오 녹화 정지 오류: $e');
      }
    }
  }

  Future<void> pauseRecording() async {
    if (controller.value.isRecordingVideo && !isPaused) {
      try {
        await controller.pauseVideoRecording();
        setState(() {
          isPaused = true;
        });
        stopTimer();
        _animationController.stop();
      } catch (e) {
        print('비디오 녹화 일시 정지 오류: $e');
      }
    }
  }

  Future<void> resumeRecording() async {
    if (controller.value.isRecordingVideo && isPaused) {
      try {
        await controller.resumeVideoRecording();
        setState(() {
          isPaused = false;
        });
        startTimer();
        _animationController.forward();
      } catch (e) {
        print('비디오 녹화 재개 오류: $e');
      }
    }
  }

  Future<void> saveVideoToGallery(XFile videoFile) async {
    final result = await ImageGallerySaver.saveFile(videoFile.path);
    print('Video saved to gallery: $result');
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        recordingSeconds++;
      });
    });
  }

  void stopTimer() {
    timer?.cancel();
  }

  Future<void> loadFirstGalleryVideoThumbnail() async {
    final directory = await getApplicationDocumentsDirectory();
    final files =
    directory.listSync().where((file) => file.path.endsWith('.mp4')).toList();
    if (files.isNotEmpty) {
      setState(() {
        firstVideoFile = files.first as File?;
        videoPlayerController = VideoPlayerController.file(firstVideoFile!)
          ..initialize().then((_) {
            setState(() {});
          });
      });
    }
  }

  Future<void> _pickVideo() async {
    final pickedFile = await _picker.pickVideo(source: ImageSource.gallery);
    if (pickedFile != null) {
      _pickedVideo = pickedFile;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              VideoEditingScreen(videoFile: File(_pickedVideo!.path)),
        ),
      );
    }
  }

  Future<void> navigateToEditingScreen() async {
    if (controller.value.isRecordingVideo) {
      await stopRecording();

    }

    if (firstVideoFile != null) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => VideoEditingScreen(videoFile: firstVideoFile!),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          CameraPreview(controller),
          Positioned(
            top: 60,
            right: 20,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                if (isRecording)
                  Center(
                    child: Text(
                      '${(recordingSeconds ~/ 60).toString().padLeft(2, '0')}:${(recordingSeconds % 60).toString().padLeft(2, '0')}',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                IconButton(
                  icon: Icon(Icons.settings),
                  color: Colors.white,
                  onPressed: () {
                    // Navigate to settings or perform other actions
                  },
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            left: 20,
            child: GestureDetector(
              onTap: _pickVideo,
              child: firstVideoFile != null &&
                  videoPlayerController != null &&
                  videoPlayerController!.value.isInitialized
                  ? Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey,
                  image: DecorationImage(
                    image: FileImage(firstVideoFile!),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 32,
                ),
              )
                  : Container(
                width: 40,
                height: 40,
                color: Colors.grey,
                child: Icon(
                  Icons.video_library,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 72,
                    height: 72,
                    child: CircularProgressIndicator(
                      value: _animation.value,
                      backgroundColor: Colors.transparent,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                      strokeWidth: 4,
                    ),
                  ),
                  FloatingActionButton(
                    shape: CircleBorder(),
                    onPressed: () {
                      if (isRecording) {
                        if (isPaused) {
                          resumeRecording();
                        } else {
                          pauseRecording();
                        }
                      } else {
                        startRecording();
                      }
                    },
                    backgroundColor: Colors.white,
                    child: Icon(
                      isRecording ? (isPaused ? Icons.play_arrow : Icons.pause) : Icons.fiber_manual_record,
                      color: isRecording ? Colors.black : Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (hasRecordedVideo)
            Positioned(
              right: 20,
              bottom: 50,
              child: GestureDetector(
                onTap: navigateToEditingScreen,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
