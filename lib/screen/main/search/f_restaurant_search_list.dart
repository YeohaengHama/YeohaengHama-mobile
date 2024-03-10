import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/main/search/w/w_restaurant_search_list.dart';
import 'package:flutter/material.dart';

import '../../../common/widget/w_height_and_width.dart';

class RestaurantSearchListFragment extends StatelessWidget {
  const RestaurantSearchListFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: restaurantList.length,
          itemBuilder: (context, index) {
            return Row(
              children: [
                RestaurantSearchListWidget(restaurantList[index])],
            );
          }),
    );
  }
}
