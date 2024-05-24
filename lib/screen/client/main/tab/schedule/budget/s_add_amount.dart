import 'dart:math';

import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/common/widget/w_tap.dart';
import 'package:fast_app_base/data/memory/budget/seleted_day_provider.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/d_pick_pament.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/s_budget_pick_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../common/dart/extension/num_formatter.dart';
import '../../../../../../common/theme/text_size.dart';
import '../../../../../../common/widget/scaffold/bottom_dialog_scaffold.dart';
import '../../../../../../common/widget/scaffold/modal_bottom_sheet.dart';
import '../../../../../../common/widget/scaffold/show_bottom_dialog.dart';
import '../../../../../../data/entity/budget/vo_current_budget.dart';
import '../../../../../../data/entity/itinerary/a_check_itinerary.dart';
import '../../../../../../data/memory/budget/add_budget_provider.dart';
import '../../../../../../data/memory/budget/current_budget_provider.dart';
import '../../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../../data/network/budget_api.dart';
import '../../../../../../entity/dummies.dart';
import '../../../../dialog/d_confirm.dart';
import '../../../search/s_space_search.dart';
import 'd_pick_day.dart';

class AddAmountScreen extends ConsumerStatefulWidget {
  const AddAmountScreen(this.budget, {Key? key}) : super(key: key);

  final CurrentBudget budget;

  @override
  _AddAmountScreenState createState() => _AddAmountScreenState();
}

class _AddAmountScreenState extends ConsumerState<AddAmountScreen> {
  late TextEditingController _amountController;
  late TextEditingController _contentController;

  final titleTxtSize = 15.0;
  final contentTxtSize = 16.0;
  int selectedIndex = -1;

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController();
    _contentController = TextEditingController();
  }

  @override
  void dispose() {
    _amountController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final budgetApi = ref.read(budgetApiProvider);
    final budget = ref.watch(currentBudgetProvider);

    final addBudget = ref.watch(addBudgetProvider);
    final addBudgetNotifier = ref.watch(addBudgetProvider.notifier);
    final seletedDay = ref.watch(selectedDayProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: false,
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 0,
            scrolledUnderElevation: 0,
            centerTitle: false,
            title: '비용 추가'.text.bold.size(titleSize).make(),
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pop(context);
                addBudgetNotifier.removeAddBudget();
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.maxFinite,
                  height: 140,
                  color: AppColors.varyWhite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: TextField(
                          cursorColor: AppColors.mainPurple,
                          controller: _amountController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            NumberFormatter(), // 포맷터를 사용합니다.
                          ],
                          style: const TextStyle(
                            fontSize: 38,
                            color: AppColors.secondGrey,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                _amountController.text.isEmpty ? '0' : '금액입력',
                            hintStyle: TextStyle(
                              color: AppColors.forthGrey,
                            ),
                          ),
                        ).pSymmetric(h: contentLeftPadding),
                      ),
                    ],
                  ),
                ),
                Height(10),
                Row(
                  children: [
                    Expanded(
                      flex: 2, // 첫 번째 자식 위젯이 2의 가중치를 가지도록 설정
                      child: Tap(
                        onTap: () {
                          showDatePickerDialog(context, PickDayDialog(budget!));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            '날짜선택'
                                .text
                                .size(titleTxtSize)
                                .color(AppColors.primaryGrey)
                                .make()
                                .pSymmetric(v: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                'Day-${addBudget.day}'
                                    .text
                                    .size(contentTxtSize)
                                    .color(AppColors.primaryGrey)
                                    .bold
                                    .make(),
                                spacer,
                                Arrow(direction: AxisDirection.down),
                              ],
                            ),
                            Line(
                              width: double.maxFinite,
                              color: AppColors.outline,
                              height: 1,
                            ).pOnly(top: 20)
                          ],
                        ).pOnly(left: contentLeftPadding, right: 20),
                      ),
                    ),
                    Expanded(
                      flex: 1, // 두 번째 자식 위젯이 1의 가중치를 가지도록 설정
                      child: Tap(
                        onTap: () {
                          showDatePickerDialog(context, PickPaymentDialog());
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            '결제수단'
                                .text
                                .size(titleTxtSize)
                                .make()
                                .pSymmetric(v: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                '${addBudget.paymentMethod}'
                                    .text
                                    .bold
                                    .size(contentTxtSize)
                                    .color(AppColors.primaryGrey)
                                    .make(),
                                spacer,
                                Arrow(
                                  direction: AxisDirection.down,
                                  size: 20,
                                ),
                              ],
                            ),
                            Line(
                              width: double.maxFinite,
                              color: AppColors.outline,
                              height: 1,
                            ).pOnly(top: 20)
                          ],
                        ).pOnly(right: 20),
                      ),
                    ),
                  ],
                ),
                Height(30),
                '내용'
                    .text
                    .size(titleTxtSize)
                    .color(AppColors.secondGrey)
                    .make()
                    .pSymmetric(h: contentLeftPadding),
                Container(
                  child: TextField(
                    cursorColor: AppColors.mainPurple,
                    controller: _contentController,
                    keyboardType: TextInputType.text,
                    style: TextStyle(
                      fontSize: contentTxtSize,
                      color: AppColors.secondGrey,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '내용을 입력해주세요.',
                      hintStyle: TextStyle(
                        color: AppColors.forthGrey,
                      ),
                    ),
                  ).pSymmetric(h: contentLeftPadding),
                ),
                Line(
                  width: double.maxFinite,
                  color: AppColors.outline,
                  height: 1,
                ).pSymmetric(h: 30, v: 15),
                Height(10),
                '카테고리'
                    .text
                    .size(titleTxtSize)
                    .color(AppColors.secondGrey)
                    .make()
                    .pSymmetric(
                      h: 30,
                    ),
                SizedBox(
                  height: 70, // 높이를 지정해줍니다
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryList.length,
                    itemBuilder: (context, index) {
                      final categoryIcon = categoryList[index];
                      final isSelected = selectedIndex == index;
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });

                            addBudgetNotifier
                                .setCategory(categoryIcon.category);
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                categoryIcon.icon,
                                size: 35.0,
                                color: isSelected
                                    ? categoryIcon.color
                                    : AppColors.forthGrey,
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                categoryIcon.category,
                                style: TextStyle(
                                  color: isSelected
                                      ? categoryIcon.color
                                      : AppColors.forthGrey,
                                ),
                              ),
                            ],
                          ).pOnly(left: 30));
                    },
                  ),
                ).pSymmetric(v: 5),
                Line(
                  width: double.maxFinite,
                  color: AppColors.outline,
                  height: 1,
                ).pSymmetric(v: 20, h: 30),
                '장소(선택)'
                    .text
                    .size(titleTxtSize)
                    .color(AppColors.secondGrey)
                    .make()
                    .pSymmetric(h: contentLeftPadding),
                Tap(
                  onTap: () {
                    Nav.push(BudgetPickArea());
                  },
                  child: Container(
                          child: addBudget.placeName != ''
                              ? '${addBudget.placeName}'
                                  .text
                                  .size(contentTxtSize)
                                  .bold
                                  .color(AppColors.primaryGrey)
                                  .make()
                                  .pSymmetric(h: contentLeftPadding)
                              : '장소를 선택 해주세요'
                                  .text
                                  .size(contentTxtSize)
                                  .bold
                                  .color(AppColors.forthGrey)
                                  .make()
                                  .pSymmetric(h: contentLeftPadding))
                      .pSymmetric(v: 15),
                ),
                Line(
                  width: double.maxFinite,
                  color: AppColors.outline,
                  height: 1,
                ).pSymmetric(h: 30, v: 15),
                Height(50),
                Tap(
                  onTap: () async {

                    addBudgetNotifier.setAmount(int.parse(_amountController.text.replaceAll(',', '')));
                    addBudgetNotifier.setContent(_contentController.text);
                    final addBudget = addBudgetNotifier.state;
                    await budgetApi.addBudget(addBudget, ref);
                    addBudgetNotifier.removeAddBudget();
                    Nav.pop(context);


                  },
                  child: RoundedContainer(
                          radius: 5,
                          backgroundColor: AppColors.mainPurple,
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Center(
                                  child: '완료'
                                      .text
                                      .bold
                                      .color(AppColors.white)
                                      .make())))
                      .pSymmetric(h: 30),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
