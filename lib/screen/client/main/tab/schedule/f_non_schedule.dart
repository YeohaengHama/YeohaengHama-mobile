import 'package:flutter/material.dart';
import '../../../../../../common/common.dart';


class NonSecheduleFragment extends StatelessWidget {
  const NonSecheduleFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
        width: maxWidthSize,

        child: RoundedContainer(
          backgroundColor: Colors.white,
          borderColor: AppColors.mainPurple,
          borderWidth: 2,
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              children: [
                TextSpan(
                  text: '아직 선택된 여행 일정이 없어요.\n',
                  style: TextStyle(
                      color: AppColors.mainPurple, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '일정을 추가해 볼까요?',
                  style: TextStyle(color: AppColors.mainPurple),
                ),
              ],
            ),
          ).pSymmetric(v: 8),
        ).pSymmetric(h: 30, v: 3).pOnly(bottom: 12)),
      ],
    );
  }
}
