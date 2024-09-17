

import 'package:cached_network_image/cached_network_image.dart';
import 'package:confetti/confetti.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/entity/area/vo_area.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiver/collection.dart';

import '../../../../../../data/entity/area/search_simple_toursim_result.dart';
import '../../../../../../data/entity/open_api/open_api_area.dart';
import '../../../../../../data/memory/search/search_simple_area_provider.dart';
import '../../../../../../data/memory/search/search_simple_diary_provider.dart';
import '../../../../../../data/memory/search/search_simple_restaurant_provider.dart';
import '../../../../../../data/network/area_api.dart';
import '../../../../../../data/network/search_api.dart';
import '../../../../post_detail/s_post_detail.dart';
import '../../../search/s_space_search.dart';

class RandomAreaWidget extends ConsumerWidget {
  final SearchSimpleTourismResult area;
  final int indexInList;

  const RandomAreaWidget(this.area, {super.key, required this.indexInList, });



  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return  Tap(
      onTap: () async{

        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  PostDetailScreen(
                    searchSimpleResult: area,
                  ))
        );

      },
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), // 조절 가능한 값을 사용
        ),
        child: Stack(
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child:

              area.firstimage != "null" &&
                  area.firstimage.isNotEmpty
                  ? CachedNetworkImage(
                imageUrl: area.firstimage!,
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              )
                  : Container(
                color: AppColors.forthGrey,
                width: 150,
                height: 150,
              ),

            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                area.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
              ).pSymmetric(v: 5,h: 10),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '$indexInList',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ).pOnly(left: 10),
            ),
          ],
        ),
      ),
    );

  }
}
