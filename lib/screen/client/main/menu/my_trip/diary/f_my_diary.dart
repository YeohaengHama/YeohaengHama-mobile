import 'package:animation_list/animation_list.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/diary/diary_show_account_all_provider.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/diary/w_diary_list.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/diary/w_no_diary_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../../../data/memory/account/user_provider.dart';
import '../../../../../../data/network/diary_api.dart';

class MyDiaryFragment extends ConsumerStatefulWidget {
  const MyDiaryFragment({Key? super.key});

  @override
  ConsumerState<MyDiaryFragment> createState() => _MyDiaryFragmentState();
}

class _MyDiaryFragmentState extends ConsumerState<MyDiaryFragment> {
  late Future<void> _loadDiaryFuture;

  @override
  void initState() {
    super.initState();
    _loadDiaryFuture = _loadDiary();
  }

  Future<void> _loadDiary() async {
    final accountNotifier = ref.read(accountProvider.notifier);
    final diaryApi = ref.read(diaryApiProvider);
    await diaryApi.showAccountAllDiary(int.parse(accountNotifier.state!.id), ref);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder<void>(
        future: _loadDiaryFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // 로딩 중일 때는 로딩 인디케이터 표시
            return Center(
                child: LoadingAnimationWidget.fallingDot(
                    color: AppColors.mainPurple, size: 100));
          } else if (snapshot.connectionState == ConnectionState.done) {
            // 응답이 완료되었을 때
            if (snapshot.hasError) {
              // 에러가 발생했을 때
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              // 정상적으로 데이터를 받아왔을 때
              final allDiary = ref.watch(DiaryFindAccountAllProvider);
              if (allDiary.isNotEmpty) {
                return Center(
                  child: AnimationList(
                    duration: 1000,
                    reBounceDepth: 10.0,
                    children: allDiary.reversed.map((diary) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: DiaryList(diary),
                      );
                    }).toList(),
                  ),);
              } else {
                // 데이터가 비어있을 때
                return const NoDiaryList();
              }
            }
          } else {
            // 초기 상태나, 데이터 로딩이 완료되지 않은 경우
            return SizedBox.shrink();
          }
        },
      ),
    );
  }
}
