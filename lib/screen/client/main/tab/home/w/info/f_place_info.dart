import 'package:card_loading/card_loading.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nav_hooks/dialog/hook_consumer_dialog.dart';

import '../../../../../../../data/entity/area/saerch_image_result.dart';
import '../../../../../../../data/entity/area/serch_detail_result.dart';
import '../../../../../../../data/entity/review/a_review_show_all.dart';
import '../../../../../post_detail/review/w_mini_review_list.dart';
import '../../../../../post_detail/review/w_review_star.dart';
import '../../../../../post_detail/review/w_simple_review.dart';
import '../../../../../post_detail/w_image_scroll_view.dart';
import '../../../../search/provider/is_detail_loading_provider.dart';

class PlaceInfoFragment extends ConsumerWidget {
  const PlaceInfoFragment(
      this.searchDetailResult, this.searchImageResult, this.searchReviewResult,
      {super.key});

  final SearchDetailResult? searchDetailResult;
  final SearchImageResult? searchImageResult;
  final List<ReviewShowAll>? searchReviewResult;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDetailLoading = ref.watch(isDetailLoadingProvider);
    final reviewController = ScrollController();
    final pageController = PageController();

    return SingleChildScrollView(
      child: Column(
        children: [
          const Height(10),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                isDetailLoading
                    ? CardLoading(
                  height: 24,
                  width: 200,
                  borderRadius: BorderRadius.circular(5),
                  margin:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                ).pOnly(top: 5)
                    : Text(
                  searchDetailResult?.title ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ).pSymmetric(h: 20, v: 5),
                isDetailLoading
                    ? CardLoading(
                  height: 20,
                  width: 100,
                  borderRadius: BorderRadius.circular(5),
                  margin:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                )
                    : const ReviewStar(),
                const SizedBox(height: 20),
                Container(
                  color: Colors.white,
                  child: isDetailLoading
                      ? CardLoading(
                    height: 200,
                    width: double.infinity,
                    borderRadius: BorderRadius.circular(5),
                  )
                      : ImageScrollView(
                    searchImageResult: searchImageResult!,
                    pageController: pageController,
                    viewRadius: 5,
                  ),
                ).pSymmetric(h: 20),
                const SizedBox(height: 20),
                const Divider(
                  thickness: 1.5,
                  color: AppColors.outline,
                ).pSymmetric(h: 40),
                const SizedBox(height: 20),
                isDetailLoading
                    ? CardLoading(
                  height: 100,
                  width: 250,
                  borderRadius: BorderRadius.circular(10),
                  margin:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                )
                    : MiniReviewList(controller: reviewController),
                const SizedBox(height: 20),
                const Divider(
                  thickness: 1.5,
                  color: AppColors.outline,
                ).pSymmetric(h: 40),
                isDetailLoading
                    ? Container()
                    : (searchDetailResult?.overView != "null" &&
                    searchDetailResult?.overView != null)
                    ? Text(
                  searchDetailResult!.overView,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.secondGrey,
                  ),
                ).pSymmetric(h: 30, v: 30)
                    : Container(),
                const Divider(
                  thickness: 1,
                  color: AppColors.outline,
                ),
                isDetailLoading
                    ? CardLoading(
                  height: 200,
                  width: double.infinity,
                  borderRadius: BorderRadius.circular(5),
                  margin: EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10),
                )
                    : SimpleReviewWidget(
                  int.parse(searchDetailResult!.contentId),
                  int.parse(searchDetailResult!.contentTypeId),
                ).pSymmetric(h: 25, v: 30),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
