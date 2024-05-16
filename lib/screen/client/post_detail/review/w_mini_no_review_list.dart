import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';

import '../../../../common/common.dart';

class MiniNoReviewList extends StatelessWidget {
  const MiniNoReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 100,
      child: RoundedContainer(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        backgroundColor: AppColors.outline,
        child: Container(
          width: 250,
          height: 100,
          child: Center(child: '아직 작성 된 리뷰가 없어요.'.text.color(AppColors.secondGrey).make())
        ),
      ),
    );
  }
}
