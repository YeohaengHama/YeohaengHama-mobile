import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/search/vo_search_diary_area.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../data/memory/diary/diary_detail_proiver.dart';
import '../../../../../data/network/diary_api.dart';
import '../../../diary/s_diary_detail.dart';


class DiarySearchListWidget extends ConsumerWidget {
  const DiarySearchListWidget(
    this.diary, {
    super.key,
  });

  final SearchDiaryArea diary;

  @override
  Widget build(BuildContext context, WidgetRef ref) {



    return Tap(
      onTap: () async{
        final diaryApi = ref.read(diaryApiProvider);
        await diaryApi.showDetailDiary(diary.diary,ref);
        final detailDiary = ref.read(detailDiaryProvider).value;
        if (detailDiary != null) {
          Nav.push(DetailDiaryScreen(detailDiary));
        } else {
          // Handle the case when either searchDetailResult or searchImageResult is null
        }
      },
      child: Column(
        children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: CachedNetworkImage(
                  imageUrl: diary.photos[0],
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              width20,
              SizedBox(
                width: 240,
                height: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      diary.title,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryGrey,
                          fontSize: 14,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      diary.content,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondGrey,
                        fontSize: 13,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      diary.tag.map((tag) => '#$tag').join('  '),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.thirdGrey,
                        fontSize: 11,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),

                    Text(
                      diary.accountShowDTO.nickname,
                      style: const TextStyle(
                          color: AppColors.forthGrey,
                          fontSize: 11),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        const Line(color: AppColors.outline,width: 340,)
      ]
      ),
    );
  }
}
