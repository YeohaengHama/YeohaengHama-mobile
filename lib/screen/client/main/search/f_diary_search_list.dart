
import 'package:fast_app_base/screen/client/main/search/w/w_diary_search_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../data/memory/search/search_simple_diary_provider.dart';

class DiarySearchListFragment extends ConsumerWidget {
  const DiarySearchListFragment({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diaryList = ref.watch(SearchDiaryAreaProvider);
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: diaryList.length,
          itemBuilder: (context, index) {
            return Row(
              children: [DiarySearchListWidget(diaryList[index])],
            );
          }),
    );
  }
}
