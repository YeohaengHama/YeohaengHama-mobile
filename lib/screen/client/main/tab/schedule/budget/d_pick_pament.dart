import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/budget/vo_current_budget.dart';
import 'package:flutter/material.dart';

class PickPaymentDialog extends StatelessWidget {
  const PickPaymentDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '현금'.text.make().pSymmetric(v:10),

        '카드'.text.make().pSymmetric(v:10)
      ],
    );
  }
}
