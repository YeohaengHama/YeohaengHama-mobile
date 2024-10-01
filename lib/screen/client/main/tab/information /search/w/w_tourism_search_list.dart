import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/open_api/open_api_area_location.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../data/entity/area/search_simple_toursim_result.dart';
import '../../../../../../../data/entity/open_api/open_api_detail.dart';
import '../../../../../../../data/memory/area/area_detail_provider.dart';
import '../../../../../../../data/network/area_api.dart';
import '../../../../search/provider/is_detail_loading_provider.dart';
import '../detail/f_detail_map.dart';
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
      contentTypeId: widget.searchSimpleTourismResult.contentTypeId,
      contentId: widget.searchSimpleTourismResult.contentId,
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
        contentTypeId: searchDetailResult.contentTypeId);
    final areaApi = ref.read(areaApiProvider);
    await areaApi.searchLocationList(openApiAreaLocation, ref);
  }

  @override
  Widget build(BuildContext context) {
    String addr1Text = widget.searchSimpleTourismResult.addr1.toString();

    return GestureDetector(
      onTap: () async {
        await loadData();

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailMap(
            searchSimpleResult: widget.searchSimpleTourismResult,
          )),
        );


      },
      child: Container(
        padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),  // 여기서 pOnly 대신 EdgeInsets 사용
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
                  Padding(  // 여기서 pOnly 대신 Padding 사용
                    padding: EdgeInsets.only(top: 3),
                    child: Text(
                      widget.searchSimpleTourismResult.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryGrey,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Padding(  // 여기서 pOnly 대신 Padding 사용
                    padding: EdgeInsets.only(bottom: 3),
                    child: Text(
                      truncateWithEllipsis(30, addr1Text),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.thirdGrey,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
