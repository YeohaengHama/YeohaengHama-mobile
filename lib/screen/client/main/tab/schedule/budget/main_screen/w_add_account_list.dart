import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../../common/widget/w_height_and_width.dart';
import '../../../../../../../common/widget/w_profile_image.dart';
import '../../../../../../../data/entity/budget/vo_add_budget.dart';
import '../../../../../../../data/entity/itinerary/a_check_itinerary.dart';
import '../../../../../../../data/memory/budget/add_budget_provider.dart';
import '../../../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import 'account_selection_provider.dart';

class AddAccountListWidget extends ConsumerStatefulWidget {
  const AddAccountListWidget(this.sharedAccount, this.accountId, {super.key});
  final SharedAccount sharedAccount;
  final int accountId;

  @override
  ConsumerState<AddAccountListWidget> createState() => _AddAccountListWidgetState();
}

class _AddAccountListWidgetState extends ConsumerState<AddAccountListWidget> {
  bool isPayerSelected = false;
  bool isAccountSelected = false;

  @override
  Widget build(BuildContext context) {
    final payerId = ref.watch(addBudgetProvider.select((state) => state.payerId));
    final accountIdList = ref.watch(addBudgetProvider.select((state) => state.accountId));
    final selectedAccounts = ref.watch(addBudgetProvider.select((state) => state.accounts)) ?? [];
    final accountSelection = ref.read(accountSelectionProvider.notifier);
    isPayerSelected = widget.sharedAccount.id == payerId;
    isAccountSelected = accountIdList.contains(widget.sharedAccount.id);

    return Row(
      children: [
        ProfileImage(
            photoUrl: widget.sharedAccount.photoUrl,
            width: 40,
            height: 40),
        Width(10),
        if (widget.sharedAccount.id == widget.accountId) ...[
          Container(
            width: 17,
            height: 17,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primaryGrey,
            ),
            alignment: Alignment.center,
            child: '나'.text.size(7).bold.color(Colors.white).make(),
          ),
          Width(5),
        ],
        '${widget.sharedAccount.nickname}'
            .text.size(16)
            .bold
            .color(AppColors.primaryGrey)
            .make(),
        Spacer(),
        GestureDetector(
          onTap: () {
            setState(() {
              if (isPayerSelected) {
                ref.read(addBudgetProvider.notifier).setPayerId(0);
              } else {
                ref.read(addBudgetProvider.notifier).setPayerId(widget.sharedAccount.id);
              }
            });
          },
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isPayerSelected ? AppColors.mainPurple : AppColors.outline,
            ),
            alignment: Alignment.center,
            child: Icon(Icons.check_rounded, size: 20, color: AppColors.white),
          ),
        ),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            setState(() {
              final currentAccounts = [...selectedAccounts];
              if (isAccountSelected) {
                ref.read(addBudgetProvider.notifier).setAccountId(accountIdList.where((id) => id != widget.sharedAccount.id).toList());
                currentAccounts.removeWhere((account) => account.id == widget.sharedAccount.id);
                accountSelection.deselectAccount(widget.sharedAccount.id);
              } else {
                ref.read(addBudgetProvider.notifier).setAccountId([...accountIdList, widget.sharedAccount.id]);
                currentAccounts.add(Accounts(
                  id: widget.sharedAccount.id,
                  nickName: widget.sharedAccount.nickname,
                  photoUrl: widget.sharedAccount.photoUrl!,
                ));
              }
              accountSelection.selectAccount(widget.sharedAccount.id);
              ref.read(addBudgetProvider.notifier).setAccounts(currentAccounts);
            });
          },
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isAccountSelected ? AppColors.mainPurple : AppColors.outline,
            ),
            alignment: Alignment.center,
            child: Icon(Icons.check_rounded, size: 20, color: AppColors.white),
          ),
        ),
      ],
    ).pSymmetric(v: 10);
  }
}
