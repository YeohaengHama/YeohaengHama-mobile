import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../common/common.dart';
import '../../../../../../common/widget/w_profile_image.dart';
import '../../../../../../data/memory/account/all_account_provider.dart';
import '../../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../../data/network/itinerary_api.dart';

class AllAccountsWidget extends ConsumerWidget {
  final ScrollController scrollController;

  const AllAccountsWidget({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final accounts = ref.watch(allAccountProvider);
    final itinerary = ref.watch(itineraryCheckProvider);
    final itineraryApi = ItineraryApi();

    // itinerary의 account와 sharedAccount의 id를 수집
    final excludeIds = [
      itinerary!.account.id,
      ...itinerary.sharedAccount.map((sharedAccount) => sharedAccount.id),
    ];

    // excludeIds에 포함되지 않는 계정만 필터링
    final filteredAccounts = accounts.where((account) => !excludeIds.contains(account.id)).toList();

    return Column(
      children: [
        Row(
          children: [
            '하마 친구'.text.bold.color(AppColors.primaryGrey).make(),
            '${filteredAccounts.length}'
                .text
                .bold
                .color(AppColors.mainPurple)
                .make(),
          ],
        ),
        Expanded(
          child: ListView.builder(
            controller: scrollController,
            itemCount: filteredAccounts.length,
            itemBuilder: (context, index) {
              final account = filteredAccounts[index];
              return Row(
                children: [
                  ProfileImage(photoUrl: account.photoUrl, width: 40, height: 40),
                  const Width(10),
                  account.nickname.text.bold.color(AppColors.primaryGrey).make(),
                  spacer,
                  RoundButton(
                    height: 30,
                    bgColor: Colors.transparent,
                    borderColor: AppColors.mainPurple,
                    borderRadius: 5,
                    text: '초대',
                    textColor: AppColors.mainPurple,
                    onTap: () async {
                      await itineraryApi.inviteItinerary(
                          account.id.toString(), itinerary.itineraryId, context, ref);
                    },
                  ),
                ],
              ).pSymmetric(v: 10);
            },
          ),
        ),
      ],
    );
  }
}
