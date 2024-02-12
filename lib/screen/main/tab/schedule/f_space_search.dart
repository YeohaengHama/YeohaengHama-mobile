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
                tabBar,
                switchTabContent(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget get tabBar => Column(
        children: [
          TabBar(
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            labelStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            labelColor: AppColors.primaryGrey,
            controller: tabController,
            indicatorColor: AppColors.mainPurple,
            unselectedLabelStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.forthGrey),
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: const EdgeInsets.symmetric(vertical: 5),
            overlayColor: const MaterialStatePropertyAll(Colors.transparent),
            tabs: [
              '여행일기'.text.make(),
              '관광'.text.make(),
              '맛집'.text.make(),
            ],
          ).pOnly(bottom: 5)
        ],
      );

  Widget switchTabContent() {
    switch (currentIndex) {
      case 0:
        return const DiarySearchListFragment();
      case 1:
        return const TourismSearchListFragment();
      case 2:
        return const RestaurantSearchListFragment();
      default:
        return Container(); // Placeholder for default case
    }
  }
}
