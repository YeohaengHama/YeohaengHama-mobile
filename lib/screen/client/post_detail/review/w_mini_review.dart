import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:get/utils.dart';

import '../../../../data/entity/review/a_review_show_all.dart';

class MiniReview extends StatelessWidget {
  final ReviewShowAll review;

  const MiniReview(this.review, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 100,
      child: RoundedContainer(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          backgroundColor: AppColors.outline,
          child: Row(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    review.rating == null
                        ? Icons.thumb_up_alt_outlined
                        : (review.rating! >= 3
                            ? Icons.thumb_up_alt_outlined
                            : Icons.thumb_down_alt_outlined),
                    color: AppColors.secondGrey,
                    size: 23,
                  ).pOnly(right: 4)),
              Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 190,
                  child: Text(
                    review.content,
                    style: const TextStyle(
                        color: AppColors.secondGrey, fontSize: 13),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          )).marginOnly(right: 10),
    ).pOnly(left: 15);
  }
}
