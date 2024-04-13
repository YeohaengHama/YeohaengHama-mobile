
import 'package:fast_app_base/screen/post_detail/review/w_mini_review.dart';
import 'package:flutter/material.dart';

import '../../../common/common.dart';
import '../../../common/widget/w_height_and_width.dart';
import '../../../entity/area/vo_review.dart';
import '../../../entity/dummies.dart';

class MiniReviewList extends StatelessWidget {
  final ScrollController controller;


  const MiniReviewList({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxWidthSize,
      height: 100,
      child: Stack(
        children: [
          ListView.builder(
            physics: const BouncingScrollPhysics(),
            controller: controller,
            scrollDirection: Axis.horizontal,
            itemCount: reviewList.length,
            itemBuilder: (context, index) {
              return Row(
                children: [MiniReview(reviewList[index])], // SimpleReview에 Tourism 전달
              );
            },
          ),
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            width: 50,
            // 조절 가능
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [Colors.white, AppColors.outline.withOpacity(0.5)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
