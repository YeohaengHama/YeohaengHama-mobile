
import 'package:fast_app_base/screen/review/picker/picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:multi_image_picker_view/multi_image_picker_view.dart';
import 'package:nav_hooks/dialog/hook_consumer_dialog.dart';

import '../../data/entity/review/a_review_post.dart';
import '../../data/network/review_api.dart';
import 'w_put_review_star.dart';
import '../../data/memory/area/area_detail_provider.dart';

class ReviewScreen extends ConsumerStatefulWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends ConsumerState<ReviewScreen> {
  int _currentRating = 0;
  final TextEditingController _textFieldController = TextEditingController();
  late MultiImagePickerController _controller;
  late final images = _controller.images;

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
    final searchDetailResult = ref.read(DetailAreaApiResponseProvider).value;
    return Scaffold(
      body: CustomScrollView(
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
                onPressed: () {

                  List<String> photoNames =
                      _controller.images.map((image) => image.path!).toList();

                  reviewApi.postReview(
                      ReviewPost(
                          contentId: int.parse(searchDetailResult.contentId),
                          contentType:
                              int.parse(searchDetailResult.contentTypeId),
                          rating: _currentRating,
                          content: _textFieldController.text,
                          photos: photoNames),
                      ref);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('리뷰가 작성되었습니다.')));
                  Nav.pop(context);
                  //   for (final image in images) {
                  //     if (image.hasPath)
                  //       request.addFile(File(image.path!));
                  //     else
                  //       request.addFile(File.fromRawPath(image.bytes!));
                  //   }
                  //   request.send();
                  //
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
                    // child:MultiImagePickerView(
                    //     controller: _controller,
                    //     builder: (BuildContext context, ImageFile imageFile) {
                    //       // here returning DefaultDraggableItemWidget. You can also return your custom widget as well.
                    //       return DefaultDraggableItemWidget(
                    //         imageFile: imageFile,
                    //         boxDecoration:
                    //         BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    //         closeButtonAlignment: Alignment.topLeft,
                    //         fit: BoxFit.cover,
                    //         closeButtonIcon:
                    //         const Icon(Icons.delete_rounded, color: AppColors.forthGrey),
                    //         closeButtonBoxDecoration: null,
                    //         showCloseButton: true,
                    //         closeButtonMargin: const EdgeInsets.all(3),
                    //         closeButtonPadding: const EdgeInsets.all(3),
                    //       );
                    //     },
                    //     initialWidget: DefaultInitialWidget(
                    //       centerWidget: Icon(Icons.image_search_outlined),
                    //       backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.05),
                    //       margin: EdgeInsets.zero,
                    //     ), // Use any Widget or DefaultInitialWidget. Use null to hide initial widget
                    //     addMoreButton: DefaultAddMoreWidget(
                    //       icon: Icon(Icons.image_search_outlined,color: Colors.grey,),
                    //       backgroundColor:AppColors.outline,
                    //     ), // Use any Widget or DefaultAddMoreWidget. Use null to hide add more button.
                    //     // gridDelegate:
                    //
                    // )
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
