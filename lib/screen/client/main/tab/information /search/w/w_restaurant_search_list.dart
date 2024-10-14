import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../data/entity/area/search_simple_restaurant_result.dart';
import '../../../../../../../data/entity/open_api/open_api_area_location.dart';
import '../../../../../../../data/entity/open_api/open_api_detail.dart';
import '../../../../../../../data/memory/area/area_detail_provider.dart';
import '../../../../../../../data/network/area_api.dart';
import '../../../../search/provider/is_detail_loading_provider.dart';
import '../detail/f_detail_map.dart';

class RestaurantSearchListWidget extends ConsumerStatefulWidget {
  const RestaurantSearchListWidget(this.searchSimpleRestaurantResult,
      {super.key});

  final SearchSimpleRestaurantResult searchSimpleRestaurantResult;

  @override
  ConsumerState<RestaurantSearchListWidget> createState() =>
      _RestaurantSearchListWidgetState();
}

class _RestaurantSearchListWidgetState
    extends ConsumerState<RestaurantSearchListWidget> {
  String truncateWithEllipsis(int cutoff, String myString) {
    return (myString.length <= cutoff)
        ? myString
        : '${myString.substring(0, cutoff)}...';
  }

  Future<void> loadData() async {
    final isLoading = ref.read(isDetailLoadingProvider.notifier);
    isLoading.setLoading(true);

    await postDetailArea();
    await searchLocation();

    isLoading.setLoading(false);
  }

  Future<void> postDetailArea() async {
    final openApiDetail = OpenApiDetail(
      numOfRows: '1',
      page: '1',
      contentTypeId: widget.searchSimpleRestaurantResult.contentTypeId,
      contentId: widget.searchSimpleRestaurantResult.contentId,
      mobileOS: 'IOS',
    );
    final areaApi = ref.read(areaApiProvider);
    await areaApi.postDetailArea(openApiDetail, ref);
  }

  Future<void> searchLocation() async {
    final searchDetailResult = ref.read(DetailAreaApiResponseProvider).value;
    final openApiAreaLocation = OpenApiAreaLocation(
        numOfRows: '100',
        mapX: searchDetailResult!.mapX,
        mapY: searchDetailResult.mapY,
        radius: 3000,
        contentTypeId: searchDetailResult.contentTypeId=="80" ? "12": searchDetailResult.contentTypeId);
    final areaApi = ref.read(areaApiProvider);

    await areaApi.searchLocationList(openApiAreaLocation, ref);
  }

  @override
  Widget build(BuildContext context) {
    String addr1Text = widget.searchSimpleRestaurantResult.addr1.toString();

    return GestureDetector(
      onTap: () async{
        await loadData();
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailMap(
            searchSimpleResult: widget.searchSimpleRestaurantResult,
          )),
        );
      },
      child: Container(
        child: Row(
          children: [
            widget.searchSimpleRestaurantResult.firstimage != "null" &&
                    widget.searchSimpleRestaurantResult.firstimage!.isNotEmpty
                ? CachedNetworkImage(
                    imageUrl: widget.searchSimpleRestaurantResult.firstimage!,
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
                    widget.searchSimpleRestaurantResult.title,
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
