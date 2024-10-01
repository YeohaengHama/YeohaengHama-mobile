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
    final isLoading = ref.read(isLoadingProvider.notifier).state;
    final isLoadingP = ref.watch(isLoadingProvider);

    // 현재 저장된 SearchSimpleResult 리스트 출력

    return tourismAreaList.isEmpty || isLoading
        ? SizedBox(
            child: Center(
                child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              '키워드와 일치하는 장소가 없어요'.text.color(AppColors.thirdGrey).bold.make(),
              '다시 검색해 볼까요?'.text.color(AppColors.thirdGrey).make(),
              const Height(30),
              const Line(color: AppColors.outline, width: 340)
            ],
          ))).pSymmetric(v: 30)
        : SizedBox(
      // 여기에 적절한 높이를 설정
      height: MediaQuery.of(context).size.height,
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
