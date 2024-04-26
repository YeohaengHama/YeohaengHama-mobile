import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/diary/diary_show_account_all_provider.dart';
import 'package:fast_app_base/screen/main/menu/my_trip/diary/w_diary_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../data/memory/user_provider.dart';
import '../../../../../data/network/diary_api.dart';

class MyDiaryFragment extends ConsumerStatefulWidget {
  const MyDiaryFragment({super.key});

  @override
  ConsumerState<MyDiaryFragment> createState() => _MyDiaryFragmentState();
}

class _MyDiaryFragmentState extends ConsumerState<MyDiaryFragment> {

  void initState() {
    // TODO: implement initState
    super.initState();
    final accountNotifier = ref.read(accountProvider.notifier);
    final diaryApi = ref.read(diaryApiProvider);
    diaryApi.showAccountAllDiary(int.parse(accountNotifier.state!.id), ref);
  }

  @override
  Widget build(BuildContext context) {
    final allDiary = ref.watch(DiaryFindAccountAllProvider);
    return Expanded(
      child: allDiary.isNotEmpty
          ? ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: allDiary.length,
                  itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [DiaryList(allDiary[index])],
          ).pSymmetric(v: 10);
                  },
                )
          : const Center(
        child: CircularProgressIndicator(),
      ).pOnly(bottom: 120),
    );
  }
}
