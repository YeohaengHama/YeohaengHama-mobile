import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/area/vo_restaurants.dart';
import 'package:fast_app_base/entity/area/vo_tourism.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/w_height_and_width.dart';

class RestaurantSearchListWidget extends StatelessWidget {
  const RestaurantSearchListWidget(this.restaurant, {super.key});
  final Restaurant restaurant;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: restaurant.retaurantImages[0],
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
                restaurant.restaurantName.text.bold.color(AppColors.primaryGrey).size(13).make().pOnly(top: 3),
                restaurant.restaurantArea.text.bold.color(AppColors.thirdGrey).size(9).make().pOnly(bottom: 3)
              ],
            ),
          )

        ],
      ).pOnly(top: 10,left: 20,bottom: 10),
    );
  }
  }

