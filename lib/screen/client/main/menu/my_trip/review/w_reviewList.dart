import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_star_rating.dart';
import 'package:fast_app_base/data/entity/review/vo_review_show_account_.dart';
import 'package:fast_app_base/screen/client/post_detail/review/w_simple_rivew_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nav_hooks/dialog/hook_consumer_dialog.dart';

class ReviewList extends HookWidget {
  const ReviewList(this.accountReview, {Key? key}) : super(key: key);
  final ReviewShowAccount accountReview;

  @override
  Widget build(BuildContext context) {
    final _accounReview = accountReview;
    final pageController = usePageController();
    return Column(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            '장소명'.text.bold.color(AppColors.secondGrey).size(18).make(),
            const Height(5),
            StarRating(score: _accounReview.rating),
            const Height(5),
            '${_accounReview.content}'.text.color(AppColors.secondGrey).size(15).make(),
            const Height(5),
            SimpleReviewList(_accounReview),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.thumb_up_alt_outlined,
                      color: AppColors.thirdGrey,
                    )),
                '1'.text.color(AppColors.thirdGrey).make(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chat_outlined,
                      color: AppColors.thirdGrey,
                    )),
                '0'.text.color(AppColors.thirdGrey).make(),
                spacer,
                '2024-04-25'
                    .text.size(5)
                    .color(AppColors.thirdGrey)
                    .make(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: AppColors.thirdGrey,
                    )),
              ],
            ),
          ],
        ).pSymmetric(v: 20,h: 35),
        const Line(color: AppColors.whiteGrey,height: 8)
      ],
    );
  }
}
