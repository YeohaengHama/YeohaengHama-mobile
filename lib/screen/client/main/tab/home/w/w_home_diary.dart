import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/diary/vo_find_all_diary.dart';
import 'package:fast_app_base/data/memory/diary/diary_detail_proiver.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../common/widget/w_profile_image.dart';
import '../../../../../../data/memory/diary/diary_find_all_proiver.dart';
import '../../../../../../data/network/diary_api.dart';
import '../../../../diary/s_diary_detail.dart';



class HomeDiaryWidget extends ConsumerWidget {
  const HomeDiaryWidget(this.diary,{super.key, });
  final FindAllDiary diary;
  final double diaryContainerWidth = 270;
  final double diaryContainerHeight = 250;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   final diaryApi = ref.read(diaryApiProvider);
   final diaryProvider =  ref.watch(DiaryFindAllProvider);

    return Container(

      width: diaryContainerWidth,
      height: diaryContainerHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2), // 그림자 색상
          spreadRadius: 2, // 그림자의 퍼짐 정도
          blurRadius: 5, // 그림자의 흐릿한 정도
          offset: Offset(0,4), // 그림자의 위치 (x, y)
        ),
      ], // 조절 가능한 값을 사용
      ),
      child:
      Stack(
        children: [Tap(
          onTap: () async {
            await diaryApi.showDetailDiary(diary.diaryId,ref);
            final detailDiary = ref.read(detailDiaryProvider).value;
            if (detailDiary != null) {
              Nav.push(DetailDiaryScreen(detailDiary));
            } else {
              // Handle the case when either searchDetailResult or searchImageResult is null
            }
          },
          child: Column(
            children: [
            SizedBox(
            width: diaryContainerWidth,
            height: 100,
            child: Row(
              children: [
                for (int i = 0; i < min(3, diary.photos.length); i++)
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: i == 0 ? Radius.circular(10) : Radius.zero,
                        topRight: i == min(3, diary.photos.length) - 1 ? Radius.circular(10) : Radius.zero,
                      ),
                      child: CachedNetworkImage(
                        imageUrl: diary.photos[i],
                        width: diaryContainerWidth,
                        height: diaryContainerHeight,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text('${diary.accountShowDTO.nickname}님의 여행일기',style:const TextStyle(
                    color: AppColors.forthGrey,
                    fontSize: 12
                ),).pOnly(bottom: 2),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(diary.title,style:const TextStyle(
                    color: AppColors.primaryGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                ),).pOnly(bottom: 2),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(diary.content,style:const TextStyle(
                    color: AppColors.secondGrey,
                    fontSize: 13
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,),
              ),
              // Align(
              //   alignment: Alignment.topLeft,
              //   child: Wrap(
              //     alignment: WrapAlignment.start,
              //     crossAxisAlignment: WrapCrossAlignment.center,
              //     children: diary.tag.map((tag) {
              //       return '#${tag} '.text.bold.color(AppColors.primaryGrey).size(11).make().pOnly(right: 2);
              //     }).toList(),
              //   ),
              // )
            ],
          ).pOnly(top: 20, left: 20),


            ],
          ),
        ),
          Positioned(
            left: 30,
            top: 75,
            child: ProfileImage(photoUrl: diary.accountShowDTO.photoUrl, width: 42, height: 42)
          )
    ]
      ),

    );
  }
}
