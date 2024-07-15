import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../data/entity/area/search_simple_restaurant_result.dart';
import '../../../../../post_detail/s_post_detail.dart';



class RestaurantSearchListWidget extends ConsumerStatefulWidget {
  const RestaurantSearchListWidget(this.searchSimpleRestaurantResult, {super.key});

  final SearchSimpleRestaurantResult searchSimpleRestaurantResult;

  @override
  ConsumerState<RestaurantSearchListWidget> createState() =>
      _RestaurantSearchListWidgetState();
}

class _RestaurantSearchListWidgetState
    extends ConsumerState<RestaurantSearchListWidget> {
  String truncateWithEllipsis(int cutoff, String myString) {
    return (myString.length <= cutoff) ? myString : '${myString.substring(0, cutoff)}...';
  }

  @override
  Widget build(BuildContext context) {
    String addr1Text = widget.searchSimpleRestaurantResult.addr1.toString();

    return GestureDetector(
      onTap: () {
        Nav.push(PostDetailScreen(
          searchSimpleResult: widget.searchSimpleRestaurantResult,
        ));
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
