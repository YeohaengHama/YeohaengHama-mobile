import 'package:fast_app_base/screen/client/main/tab/schedule/budget/calculate/w_individual_settlemnt.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/calculate/w_pay_result.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../../../common/widget/DottedLine.dart';
import '../../../../../../../common/dart/extension/datetime_extension.dart';
import '../../../../../../../data/entity/budget/vo_current_budget.dart';
import '../../../../../../../data/memory/budget/current_budget_provider.dart';
import '../../../../../../../data/memory/budget/statistics_provider.dart';
import '../../../../../../../data/memory/account/user_provider.dart';
import '../../../../../../../data/network/budget_api.dart';

class CalcultateScreen extends ConsumerStatefulWidget {
  const CalcultateScreen({super.key});

  @override
  ConsumerState<CalcultateScreen> createState() => _CalcultateScreen();
}

class _CalcultateScreen extends ConsumerState<CalcultateScreen> {
  final Duration animDuration = const Duration(milliseconds: 250);
  int touchedIndex = -1;
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    final itinerary = ref.read(itineraryCheckProvider);
    ref.read(budgetApiProvider).budgetStatistics(itinerary!, ref);
  }

  @override
  Widget build(BuildContext context) {
    final itinerary = ref.read(itineraryCheckProvider);
    final budget = ref.read(currentBudgetProvider);
    final budgetStatistics = ref.watch(statisticsProvider);
    final currentAccount = ref.read(accountProvider);

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: IconButton(
          onPressed: () {
            Nav.pop(context);
          },
          icon: Icon(Icons.close),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            formatDateRange(itinerary!.startDate, itinerary.endDate)
                .text
                .bold
                .size(20)
                .color(AppColors.primaryGrey)
                .make(),
            itinerary.name.text.size(20).color(AppColors.primaryGrey).bold.make(),
            '정산내역입니다.'.text.size(20).color(AppColors.primaryGrey).bold.make(),
            Height(30),
            Container(
              width: double.maxFinite,
              height: 2,
              child: CustomPaint(
                painter: DottedLinePainter(),
              ),
            ),
            PayResult(),
            Height(30),
            IndividualSettlement(),
          ],
        ).pSymmetric(h: 30),
      ),
    );
  }
}
