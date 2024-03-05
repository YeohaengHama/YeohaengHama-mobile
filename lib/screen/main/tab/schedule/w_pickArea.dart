import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/area/vo_area.dart'; // area 클래스의 import 추가
import 'package:fast_app_base/entity/schedule/vo_schedule.dart';
import 'package:flutter/material.dart';

import '../../../../entity/area/vo_restaurants.dart';
import '../../../../entity/area/vo_tourism.dart';

class PickAreaWidget extends StatelessWidget {
  const PickAreaWidget({Key? key, this.schedule, this.currentIndex})
      : super(key: key);
  final Schedule? schedule;
  final int? currentIndex;

  @override
  Widget build(BuildContext context) {
    final currentItem = schedule?.pickMyArea?[currentIndex!];

    return Container(
      width: 105,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: CachedNetworkImage(
              imageUrl: _getImageUrl(currentItem),
              width: 105,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _getAreaName(currentItem),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                Text(
                  _getArea(currentItem),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                )
              ],
            ).pSymmetric(v: 5, h: 10),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.remove_circle,color: AppColors.forthGrey,size: 20,).pOnly(right: 2),
          )
        ],
      ),
    ).pOnly(left: 5);
  }

  String _getImageUrl(dynamic data) {
    if (data is Restaurant) {
      return data.retaurantImages?.first ?? ''; // null 체크 추가
    } else if (data is Tourism) {
      return data.tourismImages?.first ?? ''; // null 체크 추가
    } else {
      return ''; // 다른 경우에는 빈 문자열 또는 기본 이미지 URL 등을 반환할 수 있습니다.
    }
  }

  String _getAreaName(dynamic data) {
    if (data is Restaurant) {
      return data.restaurantName ?? ''; // null 체크 추가
    } else if (data is Tourism) {
      return data.tourismName ?? ''; // null 체크 추가
    } else {
      return ''; // 다른 경우에는 빈 문자열 또는 기본 값 등을 반환할 수 있습니다.
    }
  }

  String _getArea(dynamic data) {
    if (data is Restaurant) {
      return data.restaurantArea ?? ''; // null 체크 추가
    } else if (data is Tourism) {
      return data.tourismArea ?? ''; // null 체크 추가
    } else {
      return ''; // 다른 경우에는 빈 문자열 또는 기본 값 등을 반환할 수 있습니다.
    }
  }
}
