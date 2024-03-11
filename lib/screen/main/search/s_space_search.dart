
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/search/w_search_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'content_type_provider.dart';
import 'f_diary_search_list.dart';
import 'f_restaurant_search_list.dart';
import 'f_tourism_search_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SpaceSearchFragment extends ConsumerStatefulWidget {
  const SpaceSearchFragment({super.key});

  @override
  ConsumerState<SpaceSearchFragment> createState() =>
      _SpaceSearchFragmentState();
}

class _SpaceSearchFragmentState extends ConsumerState<SpaceSearchFragment>
    with SingleTickerProviderStateMixin {
  final TextEditingController searchController = TextEditingController();

  late final tabController = TabController(length: 3, vsync: this);
  int currentIndex = 0;
  String contentTypeId = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBar(
        controller: searchController,
        hintText: '관광/맛집을 검색 해보세요.',
        contentTypeId: ref.watch(contentTypeIdProvider.notifier).state,
      ),
      body: Column(
        children: [
          tabBar,
          FutureBuilder<Widget>(
            future: switchTabFragment(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return snapshot.data ?? CircularProgressIndicator();
              } else {
                return CircularProgressIndicator(); // 로딩 중 표시
              }
            },
          ),
        ],
      ),
    );
  }

  Widget get tabBar => Column(
        children: [
          TabBar(
            onTap: (index) {
              switchTabContent(index); // index를 switchTabContent에 전달
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
          )
        ],
      );


  Future<void> switchTabContent(int index) async {
    switch (index) {
      case 0:
        ref.read(contentTypeIdProvider.notifier).state = '14';
        contentTypeId = ref.read(contentTypeIdProvider.notifier).state;
        break;
      case 1:
        ref.read(contentTypeIdProvider.notifier).state = '12';
        contentTypeId = ref.read(contentTypeIdProvider.notifier).state;
        break;
      case 2:
        ref.read(contentTypeIdProvider.notifier).state = '39';
        contentTypeId = ref.read(contentTypeIdProvider.notifier).state;
        break;
      default:
      // Placeholder for default case
    }
  }

  Future<Widget> switchTabFragment() async {
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
