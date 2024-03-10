import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/post_detail/s_tourism_detail.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../data/entity/area/search_simple_result.dart';
import '../../../../entity/area/vo_tourism.dart';

class TourismSearchListWidget extends ConsumerWidget {
  const TourismSearchListWidget(this.searchSimpleResult, {super.key});
  final SearchSimpleResult searchSimpleResult;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Tap(
      //Nav.push(TourismDetailScreen(tourism.id, tourism: tourism,));
      onTap: () {  },
      child: Container(
        child: Row(
          children: [
            CachedNetworkImage(
              imageUrl: searchSimpleResult.firstImage,
              width: 45,
              height: 45,
              fit: BoxFit.cover,
            ),
            width10
            ,
            SizedBox(
              height: 45,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  searchSimpleResult.title.text.bold.color(AppColors.primaryGrey).size(13).make().pOnly(top: 3),
                  searchSimpleResult.addr2.text.bold.color(AppColors.thirdGrey).size(9).make().pOnly(bottom: 3)
                ],
              ),
            )

          ],
        ).pOnly(top: 10,left: 20,bottom: 10),
      ),
    );
  }
}
