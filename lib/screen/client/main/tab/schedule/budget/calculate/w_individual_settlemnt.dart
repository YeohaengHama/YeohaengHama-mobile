import 'package:fast_app_base/common/widget/w_profile_image.dart';
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

class IndividualSettlement extends ConsumerStatefulWidget {
  const IndividualSettlement({super.key});

  @override
  ConsumerState<IndividualSettlement> createState() => _IndividualSettlement();
}

class _IndividualSettlement extends ConsumerState<IndividualSettlement> {
  @override
  Widget build(BuildContext context) {
    final itinerary = ref.read(itineraryCheckProvider);
    final budget = ref.read(currentBudgetProvider);
    final budgetStatistics = ref.watch(statisticsProvider);
    final currentAccount = ref.read(accountProvider);
    final Map<int, int> totalExpenditureAmounts = {};
    final Map<int, int> totalCalculationAmounts = {};

    // 모든 지출을 순회하며 정산 금액을 계산
    // 사용자 리스트 초기화
    final List<Account> accounts = itinerary!.sharedAccount.isNotEmpty
        ? itinerary!.sharedAccount
            .map((sharedAccount) => Account(
                  id: sharedAccount.id,
                  nickname: sharedAccount.nickname,
                  photoUrl: sharedAccount.photoUrl,
                ))
            .toList()
        : [
            Account(
              id: itinerary!.account.id,
              nickname: itinerary.account.nickname,
              photoUrl: itinerary.account.photoUrl,
            )
          ];

    accounts.forEach((account) {
      totalExpenditureAmounts.putIfAbsent(account.id, () => 0);
      totalCalculationAmounts.putIfAbsent(account.id, () => 0);
    });

    // 모든 지출을 순회하며 정산 금액을 계산
    budget?.expenditures.values.expand((e) => e).forEach((expenditure) {
      final payerId = expenditure.payerId.id;

      // 대표 결제 금액을 누적
      totalExpenditureAmounts[payerId] =
          (totalExpenditureAmounts[payerId] ?? 0) +
              expenditure.expendituresTotalAmount;

      expenditure.calculate.forEach((calculation) {
        final receiverId = calculation.accountShowDTO.id;

        // 개인별 지출 금액을 누적
        totalCalculationAmounts[receiverId] =
            (totalCalculationAmounts[receiverId] ?? 0) + calculation.amount;
      });
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.maxFinite,
          height: 2,
          child: CustomPaint(
            painter: DottedLinePainter(),
          ),
        ),

            '개인별 지출금액'.text.bold.make().pSymmetric(v: 10),
        Container(
          width: double.maxFinite,
          height: 2,
          child: CustomPaint(
            painter: DottedLinePainter(),
          ),
        ),
        ...totalExpenditureAmounts.entries.map((entry) {
          final account = findAccountById(entry.key, accounts);
          final totalExpenditure = entry.value;
          final totalCalculation = totalCalculationAmounts[entry.key] ?? 0;
          return Row(
            children: [
              ProfileImage(photoUrl: account.photoUrl, width: 35, height: 35),
              SizedBox(width: 8),
              account.nickname.text
                  .size(15)
                  .bold
                  .color(AppColors.primaryGrey)
                  .make(),
              SizedBox(width: 8),
              spacer,
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text(
                        formatNumber(totalCalculation.toString()),
                        style: TextStyle(
                            fontSize: 15,
                            color: AppColors.primaryGrey,
                            fontWeight: FontWeight.bold),
                      ),
                      '원'.text
                          .bold
                          .size(15)
              .color(AppColors.primaryGrey)
              .make(),
                    ],
                  ),

                  Row(
                    children: [
                      '결제: '
                          .text
                          .bold
                          .size(13)
                          .color(AppColors.thirdGrey)
                          .make(),
                      Text(
                        formatNumber(totalExpenditure.toString()),
                        style: TextStyle(
                            fontSize: 13,
                            color: AppColors.thirdGrey,
                            fontWeight: FontWeight.bold),
                      ),
                      '원'.text
                          .bold
                          .size(13)
                          .color(AppColors.thirdGrey)
                          .make(),

                    ],
                  ),
                ],
              ),
            ],
          ).pSymmetric(v: 8);
        }).toList(),
      ],
    );
  }

  // Helper method to find account by id
  Account findAccountById(int id, List<Account> accounts) {
    return accounts.firstWhere((account) => account.id == id,
        orElse: () => Account(id: 0, nickname: 'Unknown'));
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
