import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/diary/w_diary_map.dart';
import 'package:fast_app_base/screen/client/diary/w_diary_place_list.dart';
import 'package:fast_app_base/screen/client/diary/w_diary_review_list.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/diary/wirte/w_diary_map.dart';
import 'package:flutter/material.dart';

import '../../../data/entity/diary/vo_detail_diary.dart';

class DiaryPlaceHolderList extends StatelessWidget {
  final Map<String, List<Place>?> places;

  const DiaryPlaceHolderList({Key? key, required this.places})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: places.entries.map((entry) {
        final title = entry.key;
        final placeList = entry.value;
        if (placeList == null || placeList.isEmpty) {
          // 만약 placeList가 null이거나 비어 있다면 빈 컨테이너를 반환합니다.
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Line(color: AppColors.outline, height: 10),
              Text(
                title.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ).pSymmetric(h: contentLeftPadding, v: contentLeftPadding),
              Container(
               height: 150,
                color: AppColors.outline,
                child: Center(child: '해당 일정에 추가 된 장소가 없습니다.'.text.make()),
              ).pOnly(bottom: 30),
              const SizedBox(height: 10),

            ],
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Line(color: AppColors.outline, height: 10),
            Text(
              title.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ).pSymmetric(h: contentLeftPadding, v: contentLeftPadding),
            SizedBox(
              height: 250,
              child: DiaryMapWidget(placeList),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: placeList.length,
              itemBuilder: (BuildContext context, int index) {
                final place = placeList[index];
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 동그라미 안에 숫자를 표시하는 위젯
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: AppColors.mainPurple,
                      child: Text(
                        (index + 1).toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ).pOnly(left: contentLeftPadding),
                    const SizedBox(width: 8),
                    Expanded(
                      child: DiaryPlaceListWidget(place).pOnly(right: 30),
                    ),

                  ],
                ).pSymmetric(v: 10);
              },
            ),
            const SizedBox(height: 10),

          ],
        );
      }).toList(),
    );
  }
}