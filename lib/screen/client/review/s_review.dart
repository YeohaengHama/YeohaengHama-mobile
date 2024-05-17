import 'package:fast_app_base/data/memory/user_provider.dart';
import 'package:fast_app_base/screen/client/review/picker/picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';
import 'package:nav_hooks/dialog/hook_consumer_dialog.dart';

import '../../../data/entity/review/a_review_post.dart';
import '../../../data/memory/area/area_detail_provider.dart';
import '../../../data/network/review_api.dart';
import 'w_put_review_star.dart';

class ReviewScreen extends ConsumerStatefulWidget {
  const ReviewScreen(this.id, this.type, {Key? key}) : super(key: key);
  final int id;
  final int type;

  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends ConsumerState<ReviewScreen> {
  int _currentRating = 0;
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
    final reviewApi = ref.read(reviewApiProvider);
    final account = ref.read(accountProvider);
    final searchDetailResult = ref.read(DetailAreaApiResponseProvider).value;
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    searchDetailResult!.title.text
                        .size(18)
                        .color(AppColors.primaryGrey)
                        .make(),
                  ],
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.upload),
                    onPressed: () async {
                      setState(() {
                        _isLoading = true; // 로딩 상태 시작
                      });

                      List<String> photoNames = _controller.images
                          .map((image) => image.path!)
                          .toList();

                      try {
                        await reviewApi.postReview(
                          ReviewPost(
                            placeName: searchDetailResult.title,
                            accountId: account!.id,
                            contentId: int.parse(searchDetailResult.contentId),
                            contentType:
                            int.parse(searchDetailResult.contentTypeId),
                            rating: _currentRating,
                            content: _textFieldController.text,
                            photos: photoNames,
                          ),
                          ref,
                        );

                        await reviewApi.showAllReview(widget.id, widget.type, ref);

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              backgroundColor: AppColors.mainPurple,
                              content: Text('리뷰가 작성되었습니다.')),
                        );
                        Nav.pop(context);
                      } catch (e) {
                        // 오류 처리 (예: 에러 메시지 표시)
                      } finally {
                        setState(() {
                          _isLoading = false; // 로딩 상태 종료
                        });
                      }
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
                      PutReviewStar(
                        maxRating: 5,
                        onRatingChanged: (rating) {
                          setState(() {
                            _currentRating = rating;
                          });
                        },
                      ),
                      const SizedBox(height: 20),
                      const Line(color: AppColors.outline).pSymmetric(h: 30),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: TextField(
                          controller: _textFieldController,
                          decoration: const InputDecoration(
                            hintText: '직접 경험한 솔직한 리뷰를 남겨주세요',
                            border: InputBorder.none,
                          ),
                          maxLines: null,
                          onChanged: (text) {
                            setState(() {});
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      const SizedBox(height: 20),
                      const SizedBox(height: 32),
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
