import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../common/common.dart';
import '../../../../../../common/widget/w_profile_image.dart';
import '../../../../../../data/memory/account/all_account_provider.dart';
import '../../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../../data/network/itinerary_api.dart';

class FriendsListWidget extends ConsumerWidget {

  const FriendsListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itinerary = ref.watch(itineraryCheckProvider);
    final accountsProvider = ref.watch(allAccountProvider);

    final itineraryApi = ItineraryApi();
    String accountId = '';
    final sharedAccounts = itinerary!.sharedAccount
        .where((sharedAccount) => sharedAccount.id != itinerary.account.id)
        .toList();
    return ListView.builder(
      itemCount: sharedAccounts.length,
      itemBuilder: (context, index) {
        final sharedAccount = sharedAccounts[index];
        return Row(
          children: [
            ProfileImage(photoUrl: sharedAccount.photoUrl, width: 40, height: 40),
            Width(10),
            '${sharedAccount.nickname}'.text.bold.color(AppColors.primaryGrey).make()
          ],
        ).pSymmetric(v: 10);
      },
    );
  }
}
