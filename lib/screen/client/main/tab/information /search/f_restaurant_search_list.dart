import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/search/provider/is_loading_provider.dart';
import 'package:fast_app_base/screen/client/main/tab/information%20/search/w/w_restaurant_search_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../data/memory/search/search_simple_restaurant_provider.dart';

class RestaurantSearchListFragment extends ConsumerWidget {
  const RestaurantSearchListFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Provider 등록
    final restaurantAreaList = ref.watch(simpleAreaRestaurantApiResponseProvider);
    final isLoading = ref.watch(isLoadingProvider.notifier).state;
    // 현재 저장된 SearchSimpleResult 리스트 출력

    return restaurantAreaList.isEmpty && !isLoading ?
    SizedBox(
        child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                '키워드와 일치하는 장소가 없어요.'.text.color(AppColors.thirdGrey).bold.make(),
                '여행일기를 작성해 볼까요?'.text.color(AppColors.thirdGrey).make(),
                const Height(30),
                const Line(color: AppColors.outline,width: 340)
              ],
            ))).pSymmetric(v: 30)
        :
    Expanded(
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
          : Container(),
    );
  }
}
