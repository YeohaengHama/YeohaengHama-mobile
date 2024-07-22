import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class VideoSwipeScreen extends StatefulWidget {
  @override
  _VideoSwipeScreenState createState() => _VideoSwipeScreenState();
}

class _VideoSwipeScreenState extends State<VideoSwipeScreen> {
  final PageController _pageController = PageController();

  final List<String> _videoAssets = [
    'assets/video/video01.mp4',
    'assets/video/video02.mp4',
    'assets/video/video01.mp4',
    'assets/video/video02.mp4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        children: _videoAssets.map((url) => VideoPlayerScreen(url: url)).toList(),
      ),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  final String url;

  VideoPlayerScreen({required this.url});

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.url);
    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      setState(() {});
      _controller.play();
      _controller.setLooping(true);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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

  @override
  Widget build(BuildContext context) {
    const double iconSize = 30.0;
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done && _controller.value.isInitialized) {
          return Stack(
            children: [
              Positioned.fill(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _controller.value.size.width,
                    height: _controller.value.size.height,
                    child: VideoPlayer(_controller),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _togglePlayPause();
                },
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
                      Tap(
                        onTap: () {},
                        child: Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.white,
                          size: iconSize,
                        ).pSymmetric(v: 5),
                      ),
                      '1230'.text.color(Colors.white).make()
                    ]),
                    Height(10),
                    Column(children: [
                      Tap(
                        onTap: () {},
                        child: Icon(
                          Icons.chat_bubble_outline_rounded,
                          color: Colors.white,
                          size: iconSize,
                        ).pSymmetric(v: 5),
                      ),
                      '1230'.text.color(Colors.white).make()
                    ]),
                    Column(
                      children: [
                        Row(
                          children: [

                          ],
                        )

                      ],
                    )
                  ],
                ),
              )
            ],
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
