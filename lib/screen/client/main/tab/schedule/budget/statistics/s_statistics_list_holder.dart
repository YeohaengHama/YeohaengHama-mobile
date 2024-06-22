import 'package:animation_list/animation_list.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/budget/add_budget_provider.dart';
import 'package:fast_app_base/data/memory/budget/seleted_day_provider.dart';
import 'package:fast_app_base/data/network/budget_api.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/main_screen/s_add_amount.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../../../../common/dart/extension/day_parser.dart';
import '../../../../../../../common/widget/DottedLine.dart';
import '../../../../../../../data/entity/budget/vo_current_budget.dart';
import '../../../../../../../data/memory/budget/current_budget_provider.dart';
import '../../../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../../../entity/dummies.dart';

class StatisticsListHolder extends ConsumerStatefulWidget {
  final CurrentBudget budget;
  final String selectedCategory;

  const StatisticsListHolder({
    Key? key,
    required this.budget,
    required this.selectedCategory,
  }) : super(key: key);

  @override
  ConsumerState<StatisticsListHolder> createState() => _StatisticsListHolderState();
}

class _StatisticsListHolderState extends ConsumerState<StatisticsListHolder> {
  @override
  Widget build(BuildContext context) {
    final seletedDay = ref.read(selectedDayProvider.notifier);
    final budgetApi = ref.read(budgetApiProvider);
    final addBudget = ref.read(addBudgetProvider.notifier);
    final pudgetNotifier = ref.watch(currentBudgetProvider);
    final checkItinerary = ref.read(itineraryCheckProvider);

    List<Expenditure> filterExpenditures(List<Expenditure> expenditures) {
      if (widget.selectedCategory == '전체') {
        return expenditures;
      }
      return expenditures.where((expenditure) => expenditure.category == widget.selectedCategory).toList();
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...widget.budget.expenditures.entries.map((entry) {
            final title = 'Day-${entry.key}';
            final expenditureList = filterExpenditures(entry.value);
            if (expenditureList.isEmpty) {
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
                  Text(
                    title.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ).pSymmetric(v: 15),
                  Container(
                    width: double.maxFinite,
                    height: 2,
                    child: CustomPaint(
                      painter: DottedLinePainter(),
                    ),
                  ),
                  '해당 날짜에 지출이 없습니다.'.text.color(AppColors.thirdGrey).bold.make().pSymmetric(v: 30)
                ],
              );
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  height: 2,
                  child: CustomPaint(
                    painter: DottedLinePainter(),
                  ).pOnly(top: 2),
                ),
                Text(
                  title.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ).pSymmetric(v: 15),
                Container(
                  width: double.maxFinite,
                  height: 2,
                  child: CustomPaint(
                    painter: DottedLinePainter(),
                  ),
                ),
                AnimationList(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  duration: 1500,
                  reBounceDepth: 0.5,
                  children: List.generate(expenditureList.length, (index) {
                    final expenditure = expenditureList[index];
                    final category = categoryList.firstWhere((item) => item.engCategory == expenditure.category);

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
                              await budgetApi.deleteBudgetOne(expenditure.id, ref);

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
                          Icon(category.icon, size: 23, color: category.color).pOnly(right: 10),
                          expenditure.content.text.color(AppColors.primaryGrey).bold.make().pSymmetric(v: 5),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              '₩ ${NumberFormat('#,##0', 'en_US').format(expenditure.expendituresTotalAmount)}'
                                  .text
                                  .color(AppColors.primaryGrey)
                                  .bold
                                  .make(),
                            ],
                          ),
                        ],
                      ).pSymmetric(v: 10),
                    );
                  }),
                ),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }
}
