import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/calculate/s_calculate.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/statistics/s_statistics.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/main_screen/w_dudget_holder.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart'; // Import the intl package

import '../../../../../../../common/theme/text_size.dart';
import '../../../../../../../data/entity/itinerary/a_check_itinerary.dart';
import '../../../../../../../data/memory/budget/current_budget_provider.dart';
import '../../../../search/s_space_search.dart';

class BudgetScreen extends ConsumerStatefulWidget {
  const BudgetScreen(this.itinerary, {super.key});

  final CheckItinerary itinerary;

  @override
  ConsumerState<BudgetScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends ConsumerState<BudgetScreen> {
  @override
  Widget build(BuildContext context) {
    final budget = ref.watch(currentBudgetProvider);
    final formattedTotalAmount = NumberFormat('#,##0', 'en_US').format(budget!.budgetTotalAmount);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: AppColors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            '가계부'.text.bold.size(titleSize).make(),
            '${widget.itinerary.name}'
                .text
                .size(titleSize - 2)
                .color(AppColors.thirdGrey)
                .make()
          ],
        ),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () async {
            Nav.pop(context);
            // 데이터를 새로 고침하는 작업을 수행합니다.
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                Nav.push(StatisticsScreen());
              },
              icon: const Icon(Icons.percent_rounded)), //Colock Loader 10
          IconButton(onPressed: () {Nav.push(CalcultateScreen());}, icon: const Icon(Icons.more_horiz)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.list)),
        ],
      ),
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Row(children: [
            // '기간전체'.text.make(),
            // '내 비용만 보기'.text.make(),
          ]),
          Expanded(
            child: BudgetHolderList(budget)
                .pSymmetric(h: 0, v: contentLeftPadding),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(16.0),
        child: Text(
          '$formattedTotalAmount원 지출',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryGrey,
          ),
          textAlign: TextAlign.center,
        ),
      ).pOnly(bottom: 30),
    );
  }
}
