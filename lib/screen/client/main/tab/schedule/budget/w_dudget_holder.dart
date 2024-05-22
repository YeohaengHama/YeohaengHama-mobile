import 'dart:ffi';

import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/budget/seleted_day_provider.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/s_add_amount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../common/dart/extension/day_parser.dart';
import '../../../../../../data/entity/budget/vo_current_budget.dart';

class BudgetHolderList extends ConsumerWidget {
  final CurrentBudget budget;

  const BudgetHolderList(this.budget, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seletedDay = ref.read(selectedDayProvider.notifier);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: budget.expendituresList.entries.map((entry) {
          final title = entry.key;
          final expenditureList = entry.value;
          if (expenditureList == null || expenditureList.isEmpty) {
            // 만약 expenditureList가 null이거나 비어 있다면 빈 컨테이너를 반환합니다.
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {
                      seletedDay.setSelectedDay(getIndexFromDayString(title));
                      Nav.push(AddAmountScreen(budget));

                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.white,
                      elevation: 0,
                      foregroundColor: AppColors.mainPurple,
                      side: BorderSide(color: AppColors.pastelPuple, width: 2.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0), // 모서리를 반지름 5로 설정
                      ),
                    ),
                    child: const Text(
                      '비용추가',
                      style: TextStyle(
                          color: AppColors.primaryGrey, fontWeight: FontWeight.bold),
                    ),
                  ),
                ).pSymmetric(v: 25)
              ],
            );
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: expenditureList.length,
                itemBuilder: (BuildContext context, int index) {
                  final expenditure = expenditureList[index];
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          expenditure.name.text
                              .color(AppColors.primaryGrey)
                              .bold
                              .make(),
                          '장소명'.text.color(AppColors.secondGrey).make()
                        ],
                      ),
                      spacer,
                      Column(
                        children: [
                          '₩ ${expenditure.amount}'
                              .text
                              .color(AppColors.primaryGrey)
                              .bold
                              .make(),
                        ],
                      )
                    ],
                  ).pSymmetric(v: 10);
                },
              ),
              const SizedBox(height: 10),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    Nav.push(AddAmountScreen(budget));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    elevation: 0,
                    foregroundColor: AppColors.mainPurple,
                    side: BorderSide(color: AppColors.pastelPuple, width: 2.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0), // 모서리를 반지름 5로 설정
                    ),
                  ),
                  child: const Text(
                    '비용추가',
                    style: TextStyle(
                        color: AppColors.primaryGrey, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
