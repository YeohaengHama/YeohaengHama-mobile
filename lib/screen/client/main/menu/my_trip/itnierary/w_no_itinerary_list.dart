import 'package:flutter/material.dart';

import '../../../../../../common/common.dart';


class NoItnieraryListWidget extends StatelessWidget {
  const NoItnieraryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            width: maxWidthSize,
            color: Colors.white,
            child: RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '아직 예정된 여행 일정이 없어요.\n',
                    style: TextStyle(
                        color: AppColors.mainPurple, fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: '일정을 추가해 볼까요?',
                    style: TextStyle(color: AppColors.mainPurple),
                  ),
                ],
              ),
            ).pSymmetric(v: 30).pSymmetric(h: 30)),
      ],
    );
  }
}
