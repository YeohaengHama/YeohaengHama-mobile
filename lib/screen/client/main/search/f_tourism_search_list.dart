import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/search/provider/is_loading_provider.dart';
import 'package:fast_app_base/screen/client/main/search/w/w_tourism_search_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../data/memory/search/search_simple_area_provider.dart';

class TourismSearchListFragment extends ConsumerWidget {
  const TourismSearchListFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Provider 등록
    final tourismAreaList = ref.watch(simpleAreaApiResponseProvider);
    final _isLoading = ref.watch(isLoadingProvider.notifier).state;

    // 현재 저장된 SearchSimpleResult 리스트 출력

    return tourismAreaList.isEmpty && !_isLoading
        ? SizedBox(
            child: Center(
                child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              '키워드와 일치하는 장소가 없어요'.text.color(AppColors.thirdGrey).bold.make(),
              '다시 검색해 볼까요?'.text.color(AppColors.thirdGrey).make(),
              Height(30),
              Line(color: AppColors.outline, width: 340)
            ],
          ))).pSymmetric(v: 30)
        : Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: tourismAreaList.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    TourismSearchListWidget(tourismAreaList[index]),
                  ],
                );
              },
            ),
          );

  }
}
