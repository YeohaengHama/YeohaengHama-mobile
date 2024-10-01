import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/main_screen/s_add_account.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../../common/dart/extension/num_formatter.dart';
import '../../../../../../../common/widget/w_profile_image.dart';
import '../../../../../../../data/memory/budget/add_budget_provider.dart';
import '../../../../../../../data/memory/budget/amount_controller_provider.dart';
import '../../../../../../../data/memory/budget/current_budget_provider.dart';
import '../../../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../../../data/network/budget_api.dart';
import 'account_selection_provider.dart';

class WithFriendsWidget extends ConsumerStatefulWidget {
  const WithFriendsWidget(this.soloBudget, {super.key});

  final bool soloBudget;

  @override
  ConsumerState<WithFriendsWidget> createState() => _WithFriendsWidgetState();
}

class _WithFriendsWidgetState extends ConsumerState<WithFriendsWidget> {
  late final Map<int, TextEditingController> _amountControllers = {};
  bool isDutchTreat = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    for (var controller in _amountControllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  void _updateTotalAmount() {
    int totalAmount = 0;
    List<int> amounts = [];
    _amountControllers.forEach((key, controller) {
      int amount = int.tryParse(controller.text.replaceAll(',', '')) ?? 0;
      totalAmount += amount;
      amounts.add(amount);
    });
    ref.read(amountControllerProvider.notifier).setAmount(totalAmount);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addBudgetProvider.notifier).setAmount(amounts);
    });
  }

  void _removeAccount(int accountId) {
    if (_amountControllers.containsKey(accountId)) {
      int amountToRemove = int.tryParse(_amountControllers[accountId]!.text.replaceAll(',', '')) ?? 0;
      if (!isDutchTreat) {
        int currentTotalAmount = ref.read(amountControllerProvider).amount;
        ref.read(amountControllerProvider.notifier).setAmount(currentTotalAmount - amountToRemove);
      }

      _amountControllers[accountId]!.dispose();
      _amountControllers.remove(accountId);
      if (isDutchTreat) {
        _recalculateAmounts();
      } else {
        _updateTotalAmount();
      }
    }
  }

  void _recalculateAmounts() {
    if (isDutchTreat && _amountControllers.isNotEmpty) {
      final totalAmount = ref.read(amountControllerProvider).amount;
      final dividedAmount = (totalAmount / _amountControllers.length).round();

      List<int> amounts = [];
      _amountControllers.forEach((key, controller) {
        controller.removeListener(_updateTotalAmount);
        controller.text = formatNumber(dividedAmount.toString());
        controller.addListener(_updateTotalAmount);
        amounts.add(dividedAmount);
      });

      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(addBudgetProvider.notifier).setAmount(amounts);
      });
    }
  }

  String formatNumber(String s) {
    return s.replaceAllMapped(
        RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
  }

  void _clearTextFields() {
    ref.read(amountControllerProvider.notifier).setAmount(0);
    _amountControllers.forEach((key, controller) {
      controller.removeListener(_updateTotalAmount);
      controller.clear();
      controller.addListener(_updateTotalAmount);
    });
  }

  @override
  Widget build(BuildContext context) {
    final budgetApi = ref.read(budgetApiProvider);
    final budget = ref.watch(currentBudgetProvider);
    final addBudget = ref.watch(addBudgetProvider);
    final itinerary = ref.read(itineraryCheckProvider);
    final amountState = ref.watch(amountControllerProvider);
    final accountSelectionState = ref.watch(accountSelectionProvider);

    final int totalAmount = amountState.amount;
    final int numberOfAccounts = addBudget.accounts?.length ?? 1;
    final int dividedAmount = numberOfAccounts > 0
        ? (totalAmount / numberOfAccounts).round()
        : 0;

    ref.listen<Map<int, bool>>(accountSelectionProvider, (previous, next) {
      next.forEach((accountId, isSelected) {
        if (!isSelected && _amountControllers.containsKey(accountId)) {
          _amountControllers[accountId]!.text = '0';
          _removeAccount(accountId);
        }
      });
    });

    if (isDutchTreat && addBudget.accounts!.isNotEmpty) {
      List<int> amounts = [];
      addBudget.accounts?.forEach((account) {
        final controller = _amountControllers.putIfAbsent(
            account.id, () => TextEditingController());
        controller.removeListener(_updateTotalAmount);
        controller.text = formatNumber(dividedAmount.toString());
        controller.addListener(_updateTotalAmount);
        int amount = int.tryParse(controller.text.replaceAll(',', '')) ?? 0;
        amounts.add(amount);
      });
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(addBudgetProvider.notifier).setAmount(amounts);
      });
    } else {
      addBudget.accounts?.forEach((account) {
        _amountControllers.putIfAbsent(account.id, () {
          final controller = TextEditingController();
          controller.addListener(_updateTotalAmount);
          return controller;
        });
      });
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!widget.soloBudget) ...[
          Row(
            children: [
              '함께한 친구'
                  .text
                  .size(15.0)
                  .color(AppColors.secondGrey)
                  .make()
                  .pSymmetric(h: contentLeftPadding),
              if (addBudget.accounts!.isNotEmpty) ...[
                spacer,
                Text('1/N')
                    .text
                    .size(15.0)
                    .color(isDutchTreat
                    ? AppColors.mainPurple
                    : AppColors.secondGrey)
                    .make(),
                Checkbox(
                  value: isDutchTreat,
                  side: BorderSide(width: 0.7, color: AppColors.secondGrey),
                  activeColor: AppColors.mainPurple,
                  onChanged: (value) {
                    setState(() {
                      isDutchTreat = value ?? true;
                      ref.read(addBudgetProvider.notifier).setDivided(isDutchTreat);
                      if (isDutchTreat) {
                        _clearTextFields(); // 텍스트 필드 초기화
                        _recalculateAmounts(); // 모드 변경 시 금액 재계산
                      }
                    });
                  },
                ),
                Text('직접 입력')
                    .text
                    .size(15.0)
                    .color(!isDutchTreat
                    ? AppColors.mainPurple
                    : AppColors.secondGrey)
                    .make(),
                Checkbox(
                  value: !isDutchTreat,
                  side: BorderSide(width: 0.7, color: AppColors.secondGrey),
                  activeColor: AppColors.mainPurple,
                  onChanged: (value) {
                    setState(() {
                      isDutchTreat = !(value ?? false);
                      ref.read(addBudgetProvider.notifier).setDivided(isDutchTreat);
                      if (!isDutchTreat) {
                        _updateTotalAmount(); // 모드 변경 시 합계 업데이트
                      }
                    });
                  },
                ),
              ],
            ],
          ),
          Container(
            child: addBudget.accounts!.isNotEmpty
                ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (var account in addBudget.accounts!)
                  Row(
                    children: [
                      Stack(
                        children: [
                          ProfileImage(
                              photoUrl: account.photoUrl,
                              width: 40,
                              height: 40),
                          if (addBudget.payerId == account.id)
                            const Positioned(
                              top: -3,
                              left: -3,
                              child: Icon(
                                Icons.star,
                                size: 20,
                                color: Colors.orange,
                              ),
                            ),
                        ],
                      ),
                      const Width(10),
                      if (itinerary!.account.id == account.id) ...[
                        Container(
                          width: 17,
                          height: 17,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryGrey,
                          ),
                          alignment: Alignment.center,
                          child: '나'
                              .text
                              .size(7)
                              .bold
                              .color(Colors.white)
                              .make(),
                        ),
                        const Width(5),
                      ],
                      Expanded(
                        child: account.nickName
                            .text
                            .size(16.0)
                            .bold
                            .color(AppColors.primaryGrey)
                            .make(),
                      ),
                      spacer,
                      SizedBox(
                        width: 80,
                        child: TextField(
                          textAlign: TextAlign.end,
                          cursorColor: AppColors.mainPurple,
                          controller: _amountControllers[account.id],
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            NumberFormatter(),
                          ],
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            hintText: '0 ',
                            border: InputBorder.none,
                          ),
                          enabled: !isDutchTreat,
                          style: TextStyle(
                            color: isDutchTreat
                                ? AppColors.primaryGrey
                                : AppColors.primaryGrey,
                          ),
                          onChanged: (value) {
                            if (!isDutchTreat) {
                              _updateTotalAmount();
                            }
                          },
                        ),
                      ),
                    ],
                  ).pSymmetric(h: contentLeftPadding, v: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Tap(
                        onTap: () {
                          Nav.push(const AddAccountScreen(
                            isEditMode: true,
                          ));
                        },
                        child: '수정'
                            .text
                            .bold
                            .color(AppColors.thirdGrey)
                            .make()),
                  ],
                ).pSymmetric(h: 40)
              ],
            )
                : Tap(
              onTap: () {
                Nav.push(const AddAccountScreen());
              },
              child: '함께한 사람을 선택 해주세요'
                  .text
                  .size(16.0)
                  .bold
                  .color(AppColors.forthGrey)
                  .make()
                  .pSymmetric(h: contentLeftPadding),
            ),
          ).pSymmetric(v: 15),
          const Line(
            width: double.maxFinite,
            color: AppColors.outline,
            height: 1,
          ).pSymmetric(h: 30, v: 15),
        ],
      ],
    );
  }
}
