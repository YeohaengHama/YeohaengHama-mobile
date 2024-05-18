
import 'package:flutter/material.dart';

import '../../../../../../common/common.dart';

class NoScheduleWidget extends StatelessWidget {
  const NoScheduleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: maxWidthSize,
        color: AppColors.mainPurple,
        child: RoundedContainer(
          borderColor: Colors.white,
          backgroundColor: AppColors.mainPurple,
          borderWidth: 2,
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: '아직 선택된 여행 일정이 없어요.\n',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '일정을 추가해 볼까요?',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ).pSymmetric(v: 8),
        ).pSymmetric(h: 30, v: 3).pOnly(bottom: 12));
  }
}