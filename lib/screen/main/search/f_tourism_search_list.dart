import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/search/w/w_tourism_search_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/memory/search/search_simple_area_provider.dart';

class TourismSearchListFragment extends ConsumerWidget {
  const TourismSearchListFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Provider 등록
    final tourismAreaList = ref.watch(simpleAreaApiResponseProvider);

    // 현재 저장된 SearchSimpleResult 리스트 출력

    return Expanded(
      child: tourismAreaList.isNotEmpty
          ? ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: tourismAreaList.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              TourismSearchListWidget(tourismAreaList[index]),
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
