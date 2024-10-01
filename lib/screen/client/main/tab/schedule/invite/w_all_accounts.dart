import 'package:fast_app_base/screen/client/main/tab/schedule/invite/w_friends_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../common/common.dart';
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

    // 여행친구 필터링
    final sharedAccounts = itinerary!.sharedAccount
        .where((sharedAccount) => sharedAccount.id != itinerary.account.id)
        .toList();

    return Column(
      children: [
        Row(
          children: [
            '여행친구'.text.bold.color(AppColors.primaryGrey).make(), // 여행친구로 변경
            '${sharedAccounts.length}'
                .text
                .bold
                .color(AppColors.mainPurple)
                .make(),
          ],
        ),
        Expanded(
          child: const FriendsListWidget(),
        ),
      ],
    );
  }
}
