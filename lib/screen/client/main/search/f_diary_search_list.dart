import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/search/provider/is_loading_provider.dart';
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
    final _isLoading = ref.watch(isLoadingProvider.notifier).state;


    if (diaryList.isEmpty || _isLoading) {
      return SizedBox(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              '아직 작성 된 여행일기가 없어요'.text.color(AppColors.thirdGrey).bold.make(),
              '여행일기를 작성해 볼까요?'.text.color(AppColors.thirdGrey).make(),
              Height(30),
              Line(color: AppColors.outline, width: 340),
            ],
          ),
        ),
      ).pSymmetric(v: 30);
    }
print(diaryList[0]);
    return SizedBox(
      // 여기에 적절한 높이를 설정
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: diaryList.length,

        itemBuilder: (context, index) {
          // 디버깅 출력
          print('Building item at index: $index');
          return Row(
            children: [
              Expanded(
                child: DiarySearchListWidget(diaryList[index]),
              ),
            ],
          );
        },
      ),
    );
  }
}
