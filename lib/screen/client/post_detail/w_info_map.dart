import 'package:fast_app_base/screen/client/post_detail/w_map.dart';
import 'package:fast_app_base/screen/client/post_detail/s_map_detail.dart';
import 'package:flutter/material.dart';
import '../../../common/common.dart';
import '../../../common/theme/text_size.dart';
import '../../../data/entity/area/saerch_image_result.dart';
import '../../../data/entity/area/serch_detail_result.dart';
import '../../../data/entity/review/a_review_show_all.dart';

class InfoMapWidget extends StatelessWidget {
  const InfoMapWidget({
    super.key,
    required this.searchDetailResult,
    required this.searchImageResult,
    required this.searchReviewResult,
  });

  final SearchDetailResult searchDetailResult;
  final SearchImageResult searchImageResult;
  final List<ReviewShowAll> searchReviewResult;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Tap(
        onTap: () {
          Nav.push(MapDetailScreen(
            searchDetailResult: searchDetailResult,
            searchImageResult: searchImageResult,
            searchReviewResult: searchReviewResult,
          ));
        },
        child: Row(children: [
          Align(
            alignment: Alignment.topLeft,
            child: '기본정보'
                .text
                .color(AppColors.primaryGrey)
                .size(secondTitleSize)
                .bold
                .make()
                .pOnly(bottom: 15),
          ),
          Spacer(),
          '자세히>'.text.size(12).color(AppColors.secondGrey).make().pOnly(right: 10)
        ]),
      ),
      SizedBox(
        width: maxWidthSize,
        height: 250,
        child: Tap(
            onTap: () {
              Nav.push(MapDetailScreen(
                searchDetailResult: searchDetailResult,
                searchImageResult: searchImageResult,
                searchReviewResult: searchReviewResult,
              ));
            },
            child: MapWidget(
                mapX: double.parse(searchDetailResult.mapX),
                mapY: double.parse(searchDetailResult.mapY))),
      ),
      Height(10),
      RoundedContainer(
        radius: 5,
        backgroundColor: AppColors.whiteGrey,
        child: Row(
          children: [
            '주소 '.text.color(AppColors.primaryGrey).bold.size(12).make(),
            searchDetailResult.addr1.text
                .color(AppColors.secondGrey)
                .size(12)
                .make(),
            searchDetailResult.addr2.text
                .color(AppColors.secondGrey)
                .size(12)
                .make(),
          ],
        ),
      ),
    ]);
  }
}
