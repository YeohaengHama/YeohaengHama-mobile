import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../entity/diary/vo_diary.dart';

class DiarySearchListWidget extends StatelessWidget {
  const DiarySearchListWidget(
    this.diary, {
    super.key,
  });

  final Diary diary;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: CachedNetworkImage(
                imageUrl: diary.diaryImages[0],
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
                    diary.diaryTitle,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryGrey,
                        fontSize: 14,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    diary.diaryContent,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.secondGrey,
                      fontSize: 13,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    diary.diaryTag.map((tag) => '#$tag').join('  '),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.thirdGrey,
                      fontSize: 11,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

                  Text(
                    diary.user.nickname,
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
      Line(color: AppColors.outline,width: 340,)
    ]
    );
  }
}
