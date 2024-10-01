import 'package:flutter/material.dart';

import '../../../../../../common/common.dart';


class NoDiaryList extends StatelessWidget {
  const NoDiaryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            width: maxWidthSize,

            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '아직 작성 된 여행 일기가 없어요.\n',
                    style: TextStyle(
                        color: AppColors.mainPurple, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '여행 일기를  작성해 볼까요?',
                    style: TextStyle(color: AppColors.mainPurple),
                  ),
                ],
              ),
            ).pSymmetric(v: 30, h: 30)),
      ],
    );
  }
}
