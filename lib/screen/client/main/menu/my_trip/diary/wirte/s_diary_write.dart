import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/data/entity/diary/vo_save_diary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';
import 'package:nav_hooks/dialog/hook_consumer_dialog.dart';

import '../../../../../../../data/memory/user_provider.dart';
import '../../../../../../../data/network/diary_api.dart';
import '../../../../../review/picker/picker.dart';


class DiaryWriteScreen extends ConsumerStatefulWidget {
  const DiaryWriteScreen(this.itineraryId, {Key? key}) : super(key: key);
  final int itineraryId;

  @override
  _DiaryWriteScreenState createState() => _DiaryWriteScreenState();
}

class _DiaryWriteScreenState extends ConsumerState<DiaryWriteScreen> {
  final TextEditingController _textTitleController = TextEditingController();
  final TextEditingController _textFieldController = TextEditingController();
  late MultiImagePickerController _controller;
  late final images = _controller.images;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _controller = MultiImagePickerController(
      maxImages: 10,
      picker: (allowMultiple) async {
        return await pickImagesUsingImagePicker(allowMultiple);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final diaryApi = ref.read(diaryApiProvider);
    final _accountProvider = ref.read(accountProvider);
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    '여행일기 작성'.text.size(18).color(AppColors.primaryGrey).make(),
                  ],
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.upload),
                    onPressed: () {
                      List<String> photoNames = _controller.images
                          .map((image) => image.path!)
                          .toList();

                      diaryApi.saveDiary(SaveDiary(
                          itinerary: widget.itineraryId,
                          date: DateTime.now().formattedDateTime,
                          title: _textTitleController.text,
                          content: _textFieldController.text,
                          photos: photoNames));
                      setState(() {
                        _isLoading = true;
                      });
                      Future.delayed(const Duration(seconds: 2), () {
                        diaryApi
                            .showAccountAllDiary(int.parse(_accountProvider!.id), ref)
                            .then((_) {
                          setState(() {
                            _isLoading = false; // 로딩 상태 변경
                          });
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                backgroundColor: AppColors.mainPurple,
                                content: Text('일기가 작성되었습니다.')),
                          );
                          Nav.pop(context);
                          Nav.pop(context);
                        });
                        },
                      );
                    },
                  )
                ],
                floating: true,
                snap: true,
              ),
              SliverToBoxAdapter(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextField(
                          controller: _textTitleController,
                          decoration: const InputDecoration(
                            hintText: '여행일기 제목(필수)',
                            border: InputBorder.none,
                          ),
                          maxLines: 1,
                          onChanged: (text) {
                            setState(() {});
                          },
                        ),
                      ),
                      const Line(color: AppColors.outline).pSymmetric(h: 30),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextField(
                          controller: _textFieldController,
                          decoration: const InputDecoration(
                            hintText:
                                '이번 여행은 어떤 여행이었나요? 여행에 대한 한 줄 요약\n또는 여행 꿀팁을 남겨보세요.',
                            border: InputBorder.none,
                          ),
                          maxLines: null,
                          onChanged: (text) {
                            setState(() {});
                          },
                        ),
                      ),
                      Container(
                        height: 600,
                        child: MultiImagePickerView(
                          controller: _controller,
                          padding: const EdgeInsets.all(10),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
