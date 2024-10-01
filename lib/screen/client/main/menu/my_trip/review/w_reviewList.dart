import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_star_rating.dart';
import 'package:fast_app_base/data/entity/review/vo_review_show_account_.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/review/w_review_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nav_hooks/dialog/hook_consumer_dialog.dart';

class ReviewList extends HookWidget {
  const ReviewList(this.accountReview, {super.key});
  final ReviewShowAccount accountReview;

  @override
  Widget build(BuildContext context) {
    final accounReview = accountReview;
    final pageController = usePageController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            accounReview.placeName.text.bold.color(AppColors.secondGrey).size(18).make(),
            const Height(5),
            StarRating(score: accounReview.rating),
            const Height(5),
            accounReview.content.text.color(AppColors.secondGrey).size(15).make(),
            const Height(5),

            if(accountReview.reviewPhotoURLList.isNotEmpty)ReviewImagesWidget(accounReview),
          ],
        ).pSymmetric(v: 20,h: 35),
        const Line(color: AppColors.whiteGrey,height: 8)
      ],
    );
  }
}
