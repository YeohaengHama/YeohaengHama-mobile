import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../data/network/diary_api.dart';
import '../w/home_diary_holder.dart';

class DiaryAllWidget extends ConsumerWidget {

  DiaryAllWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final diaryApi = ref.read(diaryApiProvider);

    // DiaryAll 데이터의 UI를 구성합니다.
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('좋아요! 하마 친구들이 남긴 여행일기를 보여줄게요💜',style: TextStyle(color: AppColors.secondGrey),),

        const Height(10),
        const HomeDiaryHolder(),
        // SizedBox(
        //   height: 150, // ListView의 높이를 지정합니다.
        //   child: ListView.builder(
        //     scrollDirection: Axis.vertical, // 수평 스크롤
        //     itemCount: data.diary.length,
        //     itemBuilder: (context, index) {
        //       final diary = data.diary[index];
        //       return Tap(
        //         onTap: () async{
        //           await diaryApi.showDetailDiary(diary.diaryId,ref);
        //           final detailDiary = ref.read(detailDiaryProvider).value;
        //           if (detailDiary != null) {
        //             Nav.push(DetailDiaryScreen(detailDiary));
        //           } else {
        //             // Handle the case when either searchDetailResult or searchImageResult is null
        //           }
        //         },
        //         child: Container(
        //           width: 200, // 각 항목의 너비를 지정합니다.
        //           margin: EdgeInsets.symmetric(vertical: 5),
        //           padding: EdgeInsets.all(8),
        //           decoration: BoxDecoration(
        //             color:AppColors.white,
        //             borderRadius: BorderRadius.circular(8),
        //           ),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Text('${diary.title}',style: TextStyle(color: AppColors.mainPurple),),
        //             ],
        //           ),
        //         ),
        //       );
        //     },
        //   ),
        // ),


        // RoundedContainer(
        //
        //     padding:EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        //
        //     backgroundColor:AppColors.whitePuple, child: '여행일기 둘러보기'.text.color(AppColors.secondGrey).make())
      ],
    );
  }
}
