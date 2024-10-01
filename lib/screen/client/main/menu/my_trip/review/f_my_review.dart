import 'package:animation_list/animation_list.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/review/w_no_review_list.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/review/w_reviewList.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../../../data/memory/review/review_show_account.dart';
import '../../../../../../data/memory/account/user_provider.dart';
import '../../../../../../data/network/review_api.dart';

class MyReviewFragment extends ConsumerStatefulWidget {
  const MyReviewFragment({Key? super.key});

  @override
  ConsumerState<MyReviewFragment> createState() => _MyReviewFragmentState();
}

class _MyReviewFragmentState extends ConsumerState<MyReviewFragment> {
  late Future<void> _loadReviewFuture;

  @override
  void initState() {
    super.initState();
    _loadReviewFuture = _loadReview();
  }

  Future<void> _loadReview() async {
    final accountNotifier = ref.read(accountProvider.notifier);
    final reviewApi = ref.read(reviewApiProvider);
    await reviewApi.showReviewAccount(
        int.parse(accountNotifier.state!.id), ref);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder<void>(
        future: _loadReviewFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // 로딩 중일 때는 로딩 인디케이터 표시
            return Center(
                child: LoadingAnimationWidget.fallingDot(
                    color: AppColors.mainPurple, size: 100));
          } else if (snapshot.connectionState == ConnectionState.done) {
            // 응답이 완료되었을 때
            if (snapshot.hasError) {
              // 에러가 발생했을 때
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              // 정상적으로 데이터를 받아왔을 때
              final allReview = ref.watch(reviewShowAccountProvider);
              if (allReview.isNotEmpty) {
                return Center(
                    child: AnimationList(
                    duration: 1100,
                    reBounceDepth: 10.0,
                    children: allReview.reversed.map((review) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ReviewList(review),
                  );
                }).toList(),
          ),);
              } else {
                // 데이터가 비어있을 때
                return const NoReviewList();
              }
            }
          } else {
            // 초기 상태나, 데이터 로딩이 완료되지 않은 경우
            return SizedBox.shrink();
          }
        },
      ),
    );
  }
}
