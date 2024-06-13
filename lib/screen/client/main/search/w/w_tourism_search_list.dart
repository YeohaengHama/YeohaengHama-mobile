import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../data/entity/area/search_simple_toursim_result.dart';
import '../../../../../data/entity/open_api/open_api_detail.dart';
import '../../../../../data/entity/open_api/open_api_image.dart';
import '../../../../../data/memory/area/area_detail_provider.dart';
import '../../../../../data/memory/area/area_image_provider.dart';
import '../../../../../data/memory/review/review_show_all_provider.dart';
import '../../../../../data/network/area_api.dart';
import '../../../../../data/network/review_api.dart';
import '../../../post_detail/s_post_detail.dart';
import '../provider/is_loading_provider.dart';

class TourismSearchListWidget extends ConsumerStatefulWidget {
  const TourismSearchListWidget(this.searchSimpleTourismResult, {super.key});

  final SearchSimpleTourismResult searchSimpleTourismResult;

  @override
  ConsumerState<TourismSearchListWidget> createState() =>
      _TourismSearchListWidgetState();
}

class _TourismSearchListWidgetState
    extends ConsumerState<TourismSearchListWidget> {
  String truncateWithEllipsis(int cutoff, String myString) {
    return (myString.length <= cutoff) ? myString : '${myString.substring(0, cutoff)}...';
  }

  @override
  Widget build(BuildContext context) {
    String addr1Text = widget.searchSimpleTourismResult.addr1.toString();

    final isLoading = ref.read(isLoadingProvider.notifier);

    Future<void> postDetailArea() async {
      final openApiDetail = OpenApiDetail(
        numOfRows: '1',
        page: '1',
        contentTypeId: widget.searchSimpleTourismResult.contentTypeId,
        contentId: widget.searchSimpleTourismResult.contentId,
        mobileOS: 'IOS',
      );
      final areaApi = ref.read(areaApiProvider);
      await areaApi.postDetailArea(openApiDetail, ref);
    }

    Future<void> postAreaImage() async {
      isLoading.setLoading(true);
      final openApiImage = OpenApiImage(
        contentId: widget.searchSimpleTourismResult.contentId,
        numOfRows: '1',
        pageNo: '1',
        mobileOS: 'IOS',
      );
      final areaApi = ref.read(areaApiProvider);
      await areaApi.postAreaImage(openApiImage, ref);
    }

    Future<void> postAreaReview() async {
      final reviewApi = ref.read(reviewApiProvider);
      await reviewApi.showAllReview(
          int.parse(widget.searchSimpleTourismResult.contentId),
          int.parse(widget.searchSimpleTourismResult.contentTypeId),
          ref);
    }

    return GestureDetector(
      onTap: () async {
        await postDetailArea();
        await postAreaImage();
        await postAreaReview();

        final searchDetailResult = ref.read(DetailAreaApiResponseProvider).value;
        final searchImageResult = ref.read(AreaImageApiResponseProvider);
        final searchReviewResult = ref.read(ReviewShowAllListProvider);
        if (searchDetailResult != null && searchImageResult != null) {
          Nav.push(postDetailScreen(
            searchDetailResult: searchDetailResult,
            searchImageResult: searchImageResult,
            searchReviewResult: searchReviewResult,
          ));
        } else {
          // Handle the case when either searchDetailResult or searchImageResult is null
        }
      },
      child: Container(
        child: Row(
          children: [
            widget.searchSimpleTourismResult.firstimage != "null" &&
                widget.searchSimpleTourismResult.firstimage!.isNotEmpty
                ? CachedNetworkImage(
              imageUrl: widget.searchSimpleTourismResult.firstimage!,
              width: 45,
              height: 45,
              fit: BoxFit.cover,
            )
                : Container(
              color: AppColors.whiteGrey,
              width: 45,
              height: 45,
            ),
            SizedBox(width: 10),
            SizedBox(
              height: 45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.searchSimpleTourismResult.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryGrey,
                      fontSize: 13,
                    ),
                  ).pOnly(top: 3),
                  Text(
                    truncateWithEllipsis(30, addr1Text),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.thirdGrey,
                      fontSize: 12,
                    ),
                  ).pOnly(bottom: 3),
                ],
              ),
            ),
          ],
        ).pOnly(top: 10, left: 20, bottom: 10),
      ),
    );
  }
}
