import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/budget/add_budget_provider.dart';
import 'package:fast_app_base/data/memory/budget/seleted_day_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../common/dart/extension/day_parser.dart';
import '../../../../../../data/entity/budget/vo_current_budget.dart';

class PickDayDialog extends ConsumerWidget {
  final CurrentBudget budget;
  const PickDayDialog(this.budget, {super.key, });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addBudget = ref.read(addBudgetProvider.notifier);
    final seletedDay = ref.read(selectedDayProvider.notifier);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: budget.expendituresList.keys.map((key) {
        return Tap(
          onTap: () { addBudget.setDay(getIndexFromDayString(key));
          seletedDay.setSelectedDay(getIndexFromDayString(key));

          Nav.pop(context);},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              key.text.make().pSymmetric(v:10), // key 출력
              // 해당 키에 해당하는 Expenditure 리스트 출력
            ],
          ),
        );
      }).toList(),
    );
  }
}
