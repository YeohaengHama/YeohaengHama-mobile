import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/diary/w_diary_review_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../data/entity/diary/vo_detail_diary.dart';
import '../../../data/entity/open_api/open_api_detail.dart';
import '../../../data/entity/open_api/open_api_image.dart';
import '../../../data/memory/area/area_detail_provider.dart';
import '../../../data/memory/area/area_image_provider.dart';
import '../../../data/memory/review/review_show_all_provider.dart';
import '../../../data/network/area_api.dart';
import '../../../data/network/review_api.dart';
import '../post_detail/s_post_detail.dart';

class DiaryPlaceListWidget extends ConsumerWidget {
  final Place place; // 가정한 프로퍼티입니다. 실제 코드에 맞게 조정해주세요.

  DiaryPlaceListWidget(this.place, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 여기서는 ref를 직접 사용할 수 있습니다.

    // onTap 이벤트 내에서 사용되는 함수들을 정의합니다.
    Future<void> postDetailArea() async {
      final openApiDetail = OpenApiDetail(
        numOfRows: '1',
        page: '1',
        contentTypeId: place.placeType,
        contentId: place.placeNum,
        mobileOS: 'IOS',
      );
      final areaApi = ref.read(areaApiProvider);
      await areaApi.postDetailArea(openApiDetail, ref);
    }

    Future<void> postAreaImage() async {
      final openApiImage = OpenApiImage(
        contentId: place.placeNum,
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
          int.parse(place.placeNum), int.parse(place.placeType), ref);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tap(
          onTap: () async {
            await postDetailArea();
            await postAreaImage();
            await postAreaReview();
            final searchDetailResult =
                ref.read(DetailAreaApiResponseProvider).value;
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              place.placeName.text.color(AppColors.primaryGrey).bold.make(),
              place.addr1.text
                  .color(AppColors.secondGrey)
                  .size(10)
                  .make()
                  .pSymmetric(v: 5),
            ],
          ),
        ),
        DiaryReviewListWidget(place.review),
      ],
    ).pSymmetric(h: 5);
  }
}
