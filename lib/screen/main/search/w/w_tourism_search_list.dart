import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/post_detail/s_post_detail.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../data/entity/area/search_simple_toursim_result.dart';
import '../../../../data/entity/open_api/open_api_detail.dart';
import '../../../../data/entity/open_api/open_api_image.dart';
import '../../../../data/memory/area/area_detail_provider.dart';
import '../../../../data/memory/area/area_image_provider.dart';
import '../../../../data/network/area_api.dart';

class TourismSearchListWidget extends ConsumerWidget {
  const TourismSearchListWidget(this.searchSimpleTourismResult, {super.key});

  final SearchSimpleTourismResult searchSimpleTourismResult;


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    Future<void> postDetailArea() async {
      final openApiDetail = OpenApiDetail(
        numOfRows: '1',
        page: '1',
        contentTypeId: searchSimpleTourismResult.contentTypeId,
        contentId: searchSimpleTourismResult.contentId,
        mobileOS: 'IOS',
      );
      final areaApi = ref.read(areaApiProvider);
      await areaApi.postDetailArea(openApiDetail, ref);
    }
    Future<void> postAreaImage() async {
      final openApiImage = OpenApiImage(
        contentId: searchSimpleTourismResult.contentId,
        numOfRows: '1',
        pageNo: '1',
        mobileOS: 'IOS',
      );
      final areaApi = ref.read(areaApiProvider);
      await areaApi.postAreaImage(openApiImage, ref);
    }

    return Tap(
      //Nav.push(TourismDetailScreen(tourism.id, tourism: tourism,));
      onTap: () async {
        await postDetailArea();
        await postAreaImage();
        final searchDetailResult = ref.read(DetailAreaApiResponseProvider).value;
        final searchImageResult = ref.read(AreaImageApiResponseProvider);
        if (searchDetailResult != null && searchImageResult != null) {
          Nav.push(postDetailScreen(
            searchDetailResult: searchDetailResult,
            searchImageResult: searchImageResult,
          ));
        } else {
          // Handle the case when either searchDetailResult or searchImageResult is null
        }
      },
      child: Container(
        child: Row(
          children: [
            searchSimpleTourismResult.firstimage != ""
                ? CachedNetworkImage(
              imageUrl: searchSimpleTourismResult.firstimage,
              width: 45,
              height: 45,
              fit: BoxFit.cover,
            )
                : Container(
              color: AppColors.whiteGrey,
              width: 45,
              height: 45,
            ),
            width10,
            SizedBox(
              height: 45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  searchSimpleTourismResult.title.text.bold
                      .color(AppColors.primaryGrey)
                      .size(13)
                      .make()
                      .pOnly(top: 3),
                  searchSimpleTourismResult.addr1.text.bold
                      .color(AppColors.thirdGrey)
                      .size(9)
                      .make()
                      .pOnly(bottom: 3)
                ],
              ),
            )
          ],
        ).pOnly(top: 10, left: 20, bottom: 10),
      ),
    );
  }
}
