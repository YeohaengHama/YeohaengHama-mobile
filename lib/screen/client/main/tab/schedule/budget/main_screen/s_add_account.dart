import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/budget/main_screen/w_add_account_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../../data/memory/budget/add_budget_provider.dart';
import '../../../../../../../data/memory/itinerary/itinerary_check_provider.dart';

class AddAccountScreen extends ConsumerStatefulWidget {
  const AddAccountScreen({super.key, this.isEditMode = false});

  final bool isEditMode;

  @override
  ConsumerState<AddAccountScreen> createState() => _AddAccountScreenState();
}

class _AddAccountScreenState extends ConsumerState<AddAccountScreen> {
  bool showPayerIdError = false;
  bool showAccountIdError = false;

  @override
  Widget build(BuildContext context) {
    final itinerary = ref.read(itineraryCheckProvider);
    final payerId = ref.watch(addBudgetProvider.select((state) => state.payerId));
    final accountIdList = ref.watch(addBudgetProvider.select((state) => state.accountId));

    final isButtonEnabled = payerId != 0 && accountIdList.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.white,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              if(!widget.isEditMode) {
              ref.read(addBudgetProvider.notifier).removePayerAndAccounts();}
              Nav.pop(context);
            }),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          '정산할 친구를\n확인해주세요'
              .text
              .bold
              .size(25)
              .color(AppColors.primaryGrey)
              .make(),
          const Height(10),
          '여행을 함께 한 친구들을 볼 수 있어요'
              .text
              .size(14)
              .color(AppColors.thirdGrey)
              .make(),
          const Height(15),
          Row(
            children: [
              '함께한 친구'.text.bold.color(AppColors.secondGrey).make(),
              '${itinerary!.sharedAccount.length}'
                  .text
                  .bold
                  .color(AppColors.mainPurple)
                  .make(),
              Spacer(),
              '결제'.text.color(AppColors.secondGrey).bold.make(),
              Icon(
                Icons.help_outline_rounded,
                size: 16,
                color: AppColors.secondGrey,
              ),
              const Width(5),
              '함께'.text.color(AppColors.secondGrey).bold.make(),
              Icon(
                Icons.help_outline_rounded,
                size: 16,
                color: AppColors.secondGrey,
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: itinerary.sharedAccount.length,
              itemBuilder: (context, index) {
                final sharedAccount = itinerary.sharedAccount[index];
                return AddAccountListWidget(sharedAccount, itinerary.account.id);
              },
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: isButtonEnabled
                  ? () {
                if (payerId == 0) {
                  setState(() {
                    showPayerIdError = true;
                  });
                } else {
                  setState(() {
                    showPayerIdError = false;
                  });
                }

                if (accountIdList.isEmpty) {
                  setState(() {
                    showAccountIdError = true;
                  });
                } else {
                  setState(() {
                    showAccountIdError = false;
                  });
                }

                if (payerId != 0 && accountIdList.isNotEmpty) {
                  ref.read(addBudgetProvider.notifier).setPayerId(payerId);
                  ref.read(addBudgetProvider.notifier).setAccountId(accountIdList);
                  Nav.pop(context);
                }
              }
                  : null,
              child: RoundedContainer(
                backgroundColor: isButtonEnabled ? AppColors.mainPurple : AppColors.forthGrey,
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                radius: 5,
                child: Container(
                  width: double.maxFinite,
                  child: Center(
                    child: '완료'
                        .text
                        .color(Colors.white)
                        .bold
                        .size(18)
                        .make()
                    ,
                  ),
                ),
              ).pOnly(bottom: 50),
            ),
          ),
        ],
      ).pSymmetric(h: 30),
    );
  }
}
