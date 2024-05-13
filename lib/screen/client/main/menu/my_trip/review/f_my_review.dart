import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/review/w_reviewList.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../data/memory/review/review_show_account.dart';
import '../../../../../../data/memory/user_provider.dart';
import '../../../../../../data/network/review_api.dart';


class MyReviewFragment extends ConsumerStatefulWidget {
  const MyReviewFragment({super.key});

  @override
  ConsumerState<MyReviewFragment> createState() => _MyReviewFragmentState();
}

class _MyReviewFragmentState extends ConsumerState<MyReviewFragment> {

  void initState() {
    // TODO: implement initState
    super.initState();
    final accountNotifier = ref.read(accountProvider.notifier);
    final reviewApi = ref.read(reviewApiProvider);
    reviewApi.showReviewAccount(int.parse(accountNotifier.state!.id), ref);
  }

  @override
  Widget build(BuildContext context) {
    final allReview = ref.watch(reviewShowAccountProvider);
    return Expanded(
      child: allReview.isNotEmpty
          ? ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: allReview.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ReviewList(allReview[index])],
          ).pSymmetric(v: 10);
        },
      )
          : const Center(
        child: CircularProgressIndicator(),
      ).pOnly(bottom: 120),
    );
  }
}
