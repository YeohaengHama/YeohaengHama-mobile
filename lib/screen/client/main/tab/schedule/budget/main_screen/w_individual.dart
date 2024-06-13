import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/budget/add_budget_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Individual extends ConsumerStatefulWidget {
  const Individual({super.key});

  @override
  ConsumerState<Individual> createState() => _IndividualState();
}

class _IndividualState extends ConsumerState<Individual> {
  bool isIndividual = false;

  @override
  Widget build(BuildContext context) {
    final budget = ref.read(addBudgetProvider.notifier);
    return  Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                '이 비용 나만보기(선택)'
                    .text
                    .size(15)
                    .color(AppColors.secondGrey)
                    .make()
                    .pOnly(left: contentLeftPadding),
                Width(5),
                Icon(Icons.lock,color: AppColors.forthGrey,size: 18,)

              ],
            ),
            Height(10),
            '일행에게 보이지 않는 비용이며, 정산에서 제외됩니다.'
                .text
                .size(13)
                .color(AppColors.thirdGrey)
                .make()
                .pOnly(left: contentLeftPadding),
          ],
        ),
        spacer,
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            shape: CircleBorder(),
            value: isIndividual,

            side: BorderSide(width: 0.7,color: AppColors.thirdGrey,),
            activeColor: AppColors.mainPurple,

            onChanged: (value) {
              setState(() {
                isIndividual = value ?? true;

              });
              budget.setIndividual(isIndividual); // 모드 변경 시 합계 업데이트
            },
          ).pOnly(right: 20),
        ),
      ],
    ).pSymmetric(v: 20);
  }
}
