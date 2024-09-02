import 'dart:io';
import 'dart:typed_data';

import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/theme/text_size.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/screen/client/main/tab/shorts/wirte/s_select_itinerary.dart';
import 'package:flutter/material.dart';
import 'package:fraction/fraction.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:video_player/video_player.dart';
import 'package:path/path.dart' as path;

import '../../../../../../data/entity/shorts/vo_short_write.dart';
import '../../../../../../data/memory/account/user_provider.dart';
import '../../../../../../data/memory/shorts/p_short_write.dart';
import '../../../../../../data/network/itinerary_api.dart';
import '../../../../../../data/network/shorts_api.dart';
import '../p_is_playing.dart';

Future<void> _getImageDimension(File file,
    {required Function(Size) onResult}) async {
  var decodedImage = await decodeImageFromList(file.readAsBytesSync());
  onResult(Size(decodedImage.width.toDouble(), decodedImage.height.toDouble()));
}

String _fileMBSize(File file) =>
    ' ${(file.lengthSync() / (1024 * 1024)).toStringAsFixed(1)} MB';

class VideoResultPopup extends ConsumerStatefulWidget {
  const VideoResultPopup({super.key, required this.video});

  final File video;

  @override
  ConsumerState<VideoResultPopup> createState() => _VideoResultPopupState();
}

class _VideoResultPopupState extends ConsumerState<VideoResultPopup> {
  VideoPlayerController? _controller;
  Size _fileDimension = Size.zero;
  late final bool _isGif =
      path.extension(widget.video.path).toLowerCase() == ".gif";
  late String _fileMbSize;
  final TextEditingController titleController = TextEditingController();
  final TextEditingController captionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final _itineraryApiProvider = ref.read(itineraryApiProvider);
    _itineraryApiProvider.showAllItinerary(ref);

    if (_isGif) {
      _getImageDimension(
        widget.video,
        onResult: (d) => setState(() => _fileDimension = d),
      );
    } else {
      _controller = VideoPlayerController.file(widget.video);
      _controller?.initialize().then((_) {
        _fileDimension = _controller?.value.size ?? Size.zero;
        setState(() {});
        _controller?.play();
        _controller?.setLooping(true);
      });
    }
    _fileMbSize = _fileMBSize(widget.video);
  }

  @override
  void dispose() {
    if (_isGif) {
      // 이미지 캐시를 비웁니다.
    } else {
      _controller?.pause();
      _controller?.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _isPlayingProvider = ref.watch(isPlayingProvider.notifier);
    final _shortsWriteProvider = ref.watch(shortsWriteProvider);
    final shortsWriteProviderNoti = ref.watch(shortsWriteProvider.notifier);
    final shortsWriteProviderState =
        ref.watch(shortsWriteProvider.notifier).state;
    final shortsApi = ref.read(shortsApiProvider);
    final _accountProvider = ref.read(accountProvider.notifier).state;
    bool _isLoading = false;

    return Scaffold(
      appBar: AppBar(
        title: Text('Shorts', style: TextStyle(fontSize: titleSize)),

        centerTitle: true,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        // AppBar 배경을 투명하게 설정
        actions: [
          IconButton(
              onPressed: () async {
                setState(() {
                  _isLoading = true; // 로딩 상태 시작
                });
                final shortsWrite = ShortsWrite(
                    accountId: int.parse(_accountProvider!.id),
                    video: widget.video.toString(),
                    title: titleController.text,
                    content: captionController.text,
                    itineraryId: shortsWriteProviderState.itineraryId,
                    itineraryTitle: shortsWriteProviderState.itineraryTitle);
                shortsWriteProviderNoti.updateShortsWirte(shortsWrite);
                await shortsApi.uploadShorts(shortsWrite, ref);
                ref.read(shortsWriteProvider.notifier).resetShortsWrite();
                Nav.pop(context);
                Nav.pop(context);
                Nav.pop(context);
                _isPlayingProvider.setPlaying(true);
                setState(() {
                  _isLoading = false; // 로딩 상태 해제
                });

              },
              icon: Icon(Icons.post_add, color: AppColors.mainPurple))
        ],
      ),
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              // 키보드 숨기기
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Center(
                        child: SizedBox(
                          width: 150,
                          height: 150 * (16 / 9),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: AspectRatio(
                              aspectRatio: 9 / 16,
                              child: _isGif
                                  ? Image.file(widget.video)
                                  : VideoPlayer(_controller!),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ).pSymmetric(v: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        style: TextStyle(
                            color: AppColors.primaryGrey, fontSize: 14),
                        cursorColor: AppColors.mainPurple,
                        controller: titleController,
                        maxLines: 1,
                        minLines: 1,
                        decoration: InputDecoration(
                          hintText: '제목 추가...',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 14),
                          border: InputBorder.none,
                        ),
                        onEditingComplete: () {
                          // 키보드 숨기기
                          FocusScope.of(context).unfocus();
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(height: 1, color: AppColors.outline),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      height: 125,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: TextField(
                        style: TextStyle(
                            color: AppColors.primaryGrey, fontSize: 14),
                        cursorColor: AppColors.mainPurple,
                        controller: captionController,
                        maxLines: 5,
                        minLines: 1,
                        decoration: InputDecoration(
                          hintText: '캡션 추가...',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 14),
                          border: InputBorder.none,
                        ),
                        onEditingComplete: () {
                          // 키보드 숨기기
                          FocusScope.of(context).unfocus();
                        },
                      ),
                    ),
                  ).pSymmetric(v: 10),
                  Divider(height: 1, color: AppColors.outline),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today_outlined,
                        size: 18,
                      ),
                      Spacer(),
                      if (shortsWriteProviderNoti.state.itineraryTitle !=
                          '') ...{
                        '${shortsWriteProviderNoti.state.itineraryTitle}'
                            .text
                            .color(AppColors.secondGrey)
                            .make()
                            .pOnly(right: 5)
                      },
                      Tap(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return RoundedContainer(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 15),
                                radius: 15,
                                child: FractionallySizedBox(
                                  heightFactor: 0.8,
                                  child: DraggableScrollableSheet(
                                    initialChildSize: 1.0,
                                    minChildSize: 1.0,
                                    maxChildSize: 1.0,
                                    expand: true,
                                    builder: (BuildContext context,
                                        ScrollController scrollController) {
                                      return SelectItineraryScreen(
                                        scrollController: scrollController,
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: Arrow(direction: AxisDirection.right)
                            .pSymmetric(h: 5),
                      ),
                    ],
                  ).pSymmetric(h: 15, v: 10),
                ],
              ),
            ),
          ),
          if (_isLoading)
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black.withOpacity(0.3),
                ),
                Center(
                    child: LoadingAnimationWidget.fourRotatingDots(
                        color: AppColors.mainPurple, size: 100)),
              ],
            ),
        ],
      ),
    );
  }
}
