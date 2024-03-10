import 'package:fast_app_base/entity/area/vo_restaurants.dart';
import 'package:fast_app_base/entity/area/vo_tourism.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/main/search/w/w_tourism_search_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../common/widget/w_height_and_width.dart';
import '../../../data/memory/simple_area_provider.dart';

class TourismSearchListFragment extends ConsumerWidget {
  const TourismSearchListFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tourismAreaList = ref.watch(simpleAreaApiResponseProvider);
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: tourismList.length,
          itemBuilder: (context, index) {
            return Row(children: [
              tourismAreaList.isNotEmpty
                  ? TourismSearchListWidget(tourismAreaList[index])
                  : Container(),
            ]);
          }),
    );
  }
}
