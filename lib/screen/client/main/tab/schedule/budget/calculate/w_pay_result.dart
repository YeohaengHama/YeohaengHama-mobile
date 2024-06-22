import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../../../common/dart/extension/day_parser.dart';
import '../../../../../../../common/widget/DottedLine.dart';
import '../../../../../../../common/dart/extension/datetime_extension.dart';
import '../../../../../../../data/entity/budget/vo_current_budget.dart';
import '../../../../../../../data/memory/budget/current_budget_provider.dart';
import '../../../../../../../data/memory/budget/statistics_provider.dart';
import '../../../../../../../data/memory/user_provider.dart';
import '../../../../../../../data/network/budget_api.dart';
class PayResult extends ConsumerStatefulWidget {
  const PayResult({super.key});

  @override
  ConsumerState<PayResult> createState() => _PayResultState();
}

class _PayResultState extends ConsumerState<PayResult> {
  @override
  Widget build(BuildContext context) {
    final itinerary = ref.read(itineraryCheckProvider);
    final budget = ref.read(currentBudgetProvider);
    final budgetStatistics = ref.watch(statisticsProvider);
    final currentAccount = ref.read(accountProvider);
    final Map<int, Map<int, int>> settlementResults = {};
    // 모든 지출을 순회하며 정산 금액을 계산
    budget?.expenditures.values.expand((e) => e).forEach((expenditure) {
      final payerId = expenditure.payerId.id;


      expenditure.calculate.forEach((calculation) {
        final receiverId = calculation.accountShowDTO.id;


        if (payerId != receiverId) {
          settlementResults.putIfAbsent(receiverId, () => {});
          settlementResults[receiverId]![payerId] =
              (settlementResults[receiverId]![payerId] ?? 0) + calculation.amount;
        }
      });
    });

    return    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            '누가 누구에게'.text.bold.make(),
            spacer,
            '얼마를'.text.bold.color(AppColors.primaryGrey).make(),
          ],
        ).pSymmetric(v: 10),
        Container(
          width: double.maxFinite,
          height: 2,
          child: CustomPaint(
            painter: DottedLinePainter(),
          ),
        ),
        ...settlementResults.entries.expand((entry) {
          final senderId = entry.key;
          return entry.value.entries.map((subEntry) {
            final receiverId = subEntry.key;
            final amount = subEntry.value;
            final senderName = findAccountNameById(senderId, budget!);
            final receiverName = findAccountNameById(receiverId, budget);
            return Row(children: [
            '$senderName -> $receiverName'
                .text
                .size(15)
                .color(AppColors.primaryGrey).bold
                .make()
                .pSymmetric(v: 8),
              spacer,
              Row(
                children: [
                  Text(
                    formatNumber(amount.toString()),
                    style: TextStyle(
                        fontSize: 15,
                        color: AppColors.mainPurple,
                        fontWeight: FontWeight.bold),
                  ),
                  '원'.text
                      .bold
                      .size(15)
                      .color(AppColors.mainPurple)
                      .make(),

                ],
              ),
            ],);
          });
        }).toList(),
      ],

    ) ;
  }
  // Helper method to find account by id
  Account findAccountById(int id, List<Account> accounts) {
    return accounts.firstWhere((account) => account.id == id, orElse: () => Account(id: 0, nickname: 'Unknown'));
  }

  // Helper method to find account name by id in budget
  String findAccountNameById(int id, CurrentBudget budget) {
    for (var expenditureList in budget.expenditures.values) {
      for (var expenditure in expenditureList) {
        if (expenditure.payerId.id == id) {
          return expenditure.payerId.nickname;
        }
        for (var calculation in expenditure.calculate) {
          if (calculation.accountShowDTO.id == id) {
            return calculation.accountShowDTO.nickname;
          }
        }
      }
    }
    return 'Unknown';
  }
}

