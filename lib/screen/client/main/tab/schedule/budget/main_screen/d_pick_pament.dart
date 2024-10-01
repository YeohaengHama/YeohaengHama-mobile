import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../data/memory/budget/add_budget_provider.dart';

class PickPaymentDialog extends ConsumerWidget {
  const PickPaymentDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addBudget = ref.read(addBudgetProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tap(
            onTap: () {
              addBudget.setPaymentMethod('현금');
              Nav.pop(context);
            },
            child: '현금'.text.make().pSymmetric(v: 10)),
        Tap(
            onTap: () {
              addBudget.setPaymentMethod('카드');
              Nav.pop(context);
            },
            child: '카드'.text.make().pSymmetric(v: 10))
      ],
    );
  }
}
