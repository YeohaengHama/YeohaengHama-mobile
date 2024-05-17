import 'package:fast_app_base/screen/client/main/menu/my_trip/diary/w_no_diary_list.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_home_diary.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../common/common.dart';
import '../../../../../../data/memory/diary/diary_find_all_proiver.dart';
import '../../../../../../data/network/diary_api.dart';

class HomeDiaryHolder extends ConsumerStatefulWidget {
  const HomeDiaryHolder({
    super.key,
  });

  @override
  ConsumerState<HomeDiaryHolder> createState() => _HomeDiaryHolderState();

}

class _HomeDiaryHolderState extends  ConsumerState<HomeDiaryHolder> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchDiaryData();
  }

  Future<void> _fetchDiaryData() async {
    final diaryApi = ref.read(diaryApiProvider);
    try {
      await diaryApi.showAllDiary(ref);
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
      });
      // Handle error here
      print('Error fetching diary data: $e');
    }
  }

  final double diaryContainerWidth = 270;
  final double diaryContainerHeight = 250;

  @override
  Widget build(BuildContext context) {
    final allDiary = ref.watch(DiaryFindAllProvider);
    return _isLoading
        ? Center(child: CircularProgressIndicator())
        : allDiary.isEmpty
        ? NoDiaryList() // Return empty container if no data
        : SizedBox(
      width: maxWidthSize,
      height: diaryContainerHeight + 20,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: allDiary.length,
        itemBuilder: (context, index) {

          final reversedIndex = allDiary.length - 1 - index;

          return Row(
            children: [
              SizedBox(
                width: diaryContainerWidth,
                height: diaryContainerHeight,
                child: HomeDiaryWidget(allDiary[reversedIndex]),
              ).pOnly(left: 5)
            ],
          ).pOnly(right: 15);
        },
      ),
    );
  }
}
