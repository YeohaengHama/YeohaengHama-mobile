import 'package:fast_app_base/data/entity/review/a_review_show_all.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/common.dart';
import '../../../../data/memory/review/review_show_all_provider.dart';
import '../../../../data/network/review_api.dart';
import '../../../../entity/dummies.dart';
import 'w_mini_no_review_list.dart';
import 'w_mini_review.dart';

class MiniReviewList extends ConsumerStatefulWidget {
  final ScrollController controller;


  const MiniReviewList(
    {
        Key? key,
        required this.controller,
      }) : super(key: key);

  @override
  ConsumerState<MiniReviewList> createState() => _MiniReviewListState();
}

class _MiniReviewListState extends ConsumerState<MiniReviewList> {

  @override
  Widget build(BuildContext context) {
    final review = ref.watch(ReviewShowAllListProvider);
    if (review is AsyncLoading) {
      // 로딩 중일 때는 CircularProgressIndicator를 표시합니다.
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    if (review is AsyncError) {
      // 오류가 발생한 경우 에러 메시지를 표시합니다.
      return Center(
        child: MiniNoReviewList(),
      );
    }

    if (review.isNotEmpty) {
      return SizedBox(
        width: maxWidthSize,
        height: 100,
        child: Stack(
          alignment: review.length == 1 ? Alignment.center : Alignment.topLeft,
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              controller: widget.controller,
              scrollDirection: Axis.horizontal,
              itemCount: review.length,
              itemBuilder: (context, index) {
                final reversedIndex = review.length - 1 - index;

                return Row(
                  children: [
                    MiniReview(review[reversedIndex])
                  ],
                );
              },
            ),
            if (review.length > 1)
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                width: 50,
                // 조절 가능
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.white, AppColors.outline],
                    ),
                  ),
                ),
              ),
          ],
        ),
      );
    }
    return MiniNoReviewList();
  }
}
