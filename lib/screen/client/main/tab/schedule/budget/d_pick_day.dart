import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../../../data/entity/budget/vo_current_budget.dart';

class PickDayDialog extends StatelessWidget {
  final CurrentBudget budget;
  const PickDayDialog(this.budget, {super.key, });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: budget.expendituresList.keys.map((key) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            key.text.make().pSymmetric(v:10), // key 출력
            // 해당 키에 해당하는 Expenditure 리스트 출력
            Column(
              children: budget.expendituresList[key]!.map((expenditure) {
                return expenditure.name.text.make(); // Expenditure 이름 출력
              }).toList(),
            ),
          ],
        );
      }).toList(),
    );
  }
}
