
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/budget/add_budget_provider.dart';
import 'package:fast_app_base/data/memory/budget/seleted_day_provider.dart';
import 'package:fast_app_base/data/network/budget_api.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/s_add_amount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../../../common/dart/extension/day_parser.dart';
import '../../../../../../data/entity/budget/vo_current_budget.dart';
import '../../../../../../data/memory/budget/current_budget_provider.dart';
import '../../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../../entity/dummies.dart';

class BudgetHolderList extends ConsumerWidget {
  final CurrentBudget budget;

  const BudgetHolderList(this.budget, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seletedDay = ref.read(selectedDayProvider.notifier);
    final budgetApi = ref.read(budgetApiProvider);
    final addBudget = ref.read(addBudgetProvider.notifier);
    final pudgetNotifier = ref.watch(currentBudgetProvider);
    final checkItinerary = ref.read(itineraryCheckProvider);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: budget.expendituresList.entries.map((entry) {
          final title = entry.key;
          final expenditureList = entry.value;
          if (expenditureList == null || expenditureList.isEmpty) {
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
                      addBudget.setDay(getIndexFromDayString(title));
                      addBudget.setItineraryId(int.parse(checkItinerary!.itineraryId));
                      Nav.push(AddAmountScreen(budget));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.white,
                      elevation: 0,
                      foregroundColor: AppColors.mainPurple,
                      side: BorderSide(color: AppColors.pastelPuple, width: 2.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
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
                  final category = categoryList.where((item) => item.category == expenditure.category).first;

                  return Slidable(
                    key: ValueKey(expenditure.id),
                    startActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {
                            // 수정 기능을 여기에 추가하세요
                            print('Edit ${expenditure.id}');
                          },
                          backgroundColor: category.color,
                          foregroundColor: Colors.white,
                          icon: Icons.edit,
                          label: '수정',
                        ),
                      ],
                    ),
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) async {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: category.color,
                                content: Text(
                                  "'${expenditure.content}' 지출이 삭제되었습니다.",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            );
                            await budgetApi.deleteBudgetOne(expenditure, budget.itineraryId, ref);


                            // 실제 삭제를 수행하려면 상태 관리 또는 다른 방법을 사용하여 목록을 업데이트하세요.
                          },
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          icon: Icons.delete,
                          label: '삭제',
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(category.icon, size: 33, color: category.color).pOnly(right: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            expenditure.content.text
                                .color(AppColors.primaryGrey)
                                .bold
                                .make()
                                .pSymmetric(v: 5),
                            expenditure.place.placeName.text.color(AppColors.secondGrey).make()
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            '₩ ${NumberFormat('#,##0', 'en_US').format(expenditure.amount)}'
                                .text
                                .color(AppColors.primaryGrey)
                                .bold
                                .make(),
                            '${expenditure.account.nickname}'.text.color(AppColors.thirdGrey).size(8).make()
                          ],
                        ),
                      ],
                    ).pSymmetric(v: 10),
                  );
                },
              ),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {
                    seletedDay.setSelectedDay(getIndexFromDayString(title));
                    addBudget.setDay(getIndexFromDayString(title));
                    addBudget.setItineraryId(int.parse(checkItinerary!.itineraryId));
                    Nav.push(AddAmountScreen(budget));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    elevation: 0,
                    foregroundColor: AppColors.mainPurple,
                    side: BorderSide(color: AppColors.pastelPuple, width: 2.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: const Text(
                    '비용추가',
                    style: TextStyle(
                        color: AppColors.primaryGrey, fontWeight: FontWeight.bold),
                  ),
                ),
              ).pSymmetric(v: 25),
            ],
          );
        }).toList(),
      ).pSymmetric(h:contentLeftPadding)
    );
  }
}
