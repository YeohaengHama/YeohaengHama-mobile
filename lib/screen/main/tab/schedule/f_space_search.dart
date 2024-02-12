import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/schedule/w_space_search_app_bar.dart';
import 'package:flutter/material.dart';

import 'f_diary_search_list.dart';
import 'f_restaurant_search_list.dart';
import 'f_tourism_search_list.dart';

class SpaceSearchFragment extends StatefulWidget {
  const SpaceSearchFragment({super.key});

  @override
  State<SpaceSearchFragment> createState() => _SpaceSearchFragmentState();
}

class _SpaceSearchFragmentState extends State<SpaceSearchFragment>
    with SingleTickerProviderStateMixin {
  final TextEditingController controller = TextEditingController();
  late final tabController = TabController(length: 3, vsync: this);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SpaceSearchAppBar(controller: controller),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                switchTabContent(),
              ],
            ),
          )
        ],
      ),
    );
  }



  Widget switchTabContent() {
    switch (currentIndex) {
      case 0:
        // ignore: prefer_const_constructors
        return DiarySearchListFragment();
      case 1:
        return const TourismSearchListFragment();
      case 2:
        return const RestaurantSearchListFragment();
      default:
        return Container(); // Placeholder for default case
    }
  }
}
