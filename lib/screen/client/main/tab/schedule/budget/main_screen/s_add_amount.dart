import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/data/memory/budget/seleted_day_provider.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/main_screen/s_budget_pick_area.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/main_screen/w_individual.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/main_screen/w_with_friends.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../../common/dart/extension/num_formatter.dart';
import '../../../../../../../common/theme/text_size.dart';
import '../../../../../../../common/widget/scaffold/show_bottom_dialog.dart';
import '../../../../../../../data/entity/budget/vo_current_budget.dart';
import '../../../../../../../data/entity/itinerary/a_check_itinerary.dart';
import '../../../../../../../data/memory/budget/add_budget_provider.dart';
import '../../../../../../../data/memory/budget/amount_controller_provider.dart';
import '../../../../../../../data/memory/budget/current_budget_provider.dart';
import '../../../../../../../data/network/budget_api.dart';
import '../../../../../../../entity/dummies.dart';

import 'd_pick_day.dart';
import 'd_pick_pament.dart';

class AddAmountScreen extends ConsumerStatefulWidget {
  const AddAmountScreen(this.budget, this.itinerary, {Key? super.key});

  final CurrentBudget budget;
  final CheckItinerary itinerary;

  @override
  _AddAmountScreenState createState() => _AddAmountScreenState();
}

class _AddAmountScreenState extends ConsumerState<AddAmountScreen> {
  late TextEditingController _amountController;
  late TextEditingController _contentController;

  final titleTxtSize = 15.0;
  final contentTxtSize = 16.0;
  bool soloBudget = true;
  int selectedIndex = -1;
  Color seletedColor = AppColors.mainPurple;
  String _previousText = '';

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController();
    _contentController = TextEditingController();
    if (widget.itinerary.sharedAccount.isNotEmpty) {
      setState(() {
        soloBudget = false;
      });
    }

    _amountController.addListener(() {
      final text = _amountController.text.replaceAll(',', '');
      if (text != _previousText) {
        _previousText = text;
        if (text.isEmpty) {
          ref.read(amountControllerProvider.notifier).setAmount(0);
        } else {
          final newAmount = int.tryParse(text) ?? 0;
          ref.read(amountControllerProvider.notifier).setAmount(newAmount);
        }
      }
    });
  }

  @override
  void dispose() {
    _amountController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  String formatNumber(String s) {
    return s.replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  }

  void _updateAmountTextField(int amount) {
    final formattedAmount = formatNumber(amount.toString());
    _amountController.value = TextEditingValue(
      text: formattedAmount,
      selection: TextSelection.collapsed(offset: formattedAmount.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    final budgetApi = ref.read(budgetApiProvider);
    final budget = ref.watch(currentBudgetProvider);
    final addBudget = ref.watch(addBudgetProvider);
    final addBudgetNotifier = ref.watch(addBudgetProvider.notifier);
    final selectedDay = ref.watch(selectedDayProvider);

    ref.listen<AmountState>(amountControllerProvider, (previous, next) {
      _updateAmountTextField(next.amount);
    });

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
                ref.read(amountControllerProvider.notifier).setAmount(0); // 값 초기화
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
                            NumberFormatter(),
                          ],
                          style: const TextStyle(
                            fontSize: 38,
                            color: AppColors.secondGrey,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '0',
                            hintStyle: const TextStyle(
                              color: AppColors.forthGrey,
                            ),
                          ),
                        ).pSymmetric(h: contentLeftPadding),
                      ),
                    ],
                  ),
                ),
                const Height(10),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Tap(
                        onTap: () {
                          ShowBottomDialog(context, PickDayDialog(budget!));
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
                                const Arrow(direction: AxisDirection.down),
                              ],
                            ),
                            const Line(
                              width: double.maxFinite,
                              color: AppColors.outline,
                              height: 1,
                            ).pOnly(top: 20)
                          ],
                        ).pOnly(left: contentLeftPadding, right: 20),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Tap(
                        onTap: () {
                          ShowBottomDialog(context, const PickPaymentDialog());
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
                                addBudget.paymentMethod
                                    .text
                                    .bold
                                    .size(contentTxtSize)
                                    .color(AppColors.primaryGrey)
                                    .make(),
                                spacer,
                                const Arrow(
                                  direction: AxisDirection.down,
                                  size: 20,
                                ),
                              ],
                            ),
                            const Line(
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
                const Height(10),
                WithFriendsWidget(soloBudget),

                const Height(10),
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
                const Line(
                  width: double.maxFinite,
                  color: AppColors.outline,
                  height: 1,
                ).pSymmetric(h: 30, v: 15),
                const Height(10),

                '카테고리'
                    .text
                    .size(titleTxtSize)
                    .color(AppColors.secondGrey)
                    .make()
                    .pSymmetric(h: 30),
                SizedBox(
                  height: 70,
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
                            seletedColor = categoryIcon.color;
                          });
                          addBudgetNotifier.setCategory(categoryIcon.engCategory);
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
                            const SizedBox(height: 8.0),
                            Text(
                              categoryIcon.category,
                              style: TextStyle(
                                color: isSelected
                                    ? categoryIcon.color
                                    : AppColors.forthGrey,
                              ),
                            ),
                          ],
                        ).pOnly(left: 30),
                      );
                    },
                  ),
                ).pSymmetric(v: 5),
                const Line(
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
                    Nav.push(const BudgetPickArea());
                  },
                  child: Container(
                    child: addBudget.placeName != ''
                        ? addBudget.placeName
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
                        .pSymmetric(h: contentLeftPadding),
                  ).pSymmetric(v: 15),
                ),
                const Line(
                  width: double.maxFinite,
                  color: AppColors.outline,
                  height: 1,
                ).pSymmetric(h: 30, v: 15),

               if(!soloBudget && addBudget.accounts!.isEmpty)...[
                 const Individual()
               ],
                Tap(
                  onTap: () async {
                    addBudgetNotifier.setTotalAmount(
                        int.parse(_amountController.text.replaceAll(',', '')));
                    if(addBudgetNotifier.getAccountListLength()==1){
                      addBudgetNotifier.setAmount([addBudgetNotifier.getTotalAmount()]
                      );
                    }
                    addBudgetNotifier.setContent(_contentController.text);


                    final addBudget = addBudgetNotifier.state;
                    await budgetApi.addBudget(addBudget, ref);
                    addBudgetNotifier.removeAddBudget();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: seletedColor,
                        content: const Text(
                          "지출을 추가하였습니다.",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
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
                            .make(),
                      ),
                    ),
                  ).pSymmetric(h: 30,v: 10).pOnly(bottom: 50),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
