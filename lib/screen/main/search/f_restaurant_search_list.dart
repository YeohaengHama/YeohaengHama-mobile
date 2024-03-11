import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/main/search/w/w_restaurant_search_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/memory/area/area_simple_restaurant_provider.dart';



class RestaurantSearchListFragment extends ConsumerWidget {
  const RestaurantSearchListFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Provider 등록
    final restaurantAreaList = ref.watch(simpleAreaRestaurantApiResponseProvider);

    // 현재 저장된 SearchSimpleResult 리스트 출력

    return Expanded(
      child: restaurantAreaList.isNotEmpty
          ? ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: restaurantAreaList.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              RestaurantSearchListWidget(restaurantAreaList[index]),
            ],
          );
        },
      )
          : const Center(
        child: CircularProgressIndicator(),
      ).pOnly(bottom: 120),
    );
  }
}
