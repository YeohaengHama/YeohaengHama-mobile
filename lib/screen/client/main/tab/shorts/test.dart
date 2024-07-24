import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fast_app_base/screen/client/main/tab/shorts/edit/s_video_editor.dart';

class Test extends StatefulWidget {

  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> with WidgetsBindingObserver, SingleTickerProviderStateMixin {

  final ImagePicker _picker = ImagePicker();
  XFile? _pickedVideo;


  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

  }



  Future<void> _pickVideo() async {
    final pickedFile = await _picker.pickVideo(source: ImageSource.gallery);
    if (pickedFile != null) {
      _pickedVideo = pickedFile;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => VideoEditingScreen(videoFile: File(_pickedVideo!.path)),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
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
              child:  Container(
                width: 72,
                height: 72,

                child: Icon(
                  Icons.play_arrow,
                  color: Colors.black,
                  size: 32,
                ),
              )

            ),
          ),
        ],
      ),
    );
  }
}
