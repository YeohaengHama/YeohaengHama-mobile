import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/search/w/w_diary_search_list.dart';
import 'package:flutter/material.dart';

import '../../../entity/diary/vo_diary.dart';
import '../../../entity/dummies.dart';

class DiarySearchListFragment extends StatelessWidget {
  const DiarySearchListFragment({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
