import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/diary/w_diary_review_list.dart';
import 'package:fast_app_base/screen/client/post_detail/test_post_deatil.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../data/entity/diary/vo_detail_diary.dart';

class DiaryPlaceListWidget extends ConsumerWidget {
  final Place place; // 가정한 프로퍼티입니다. 실제 코드에 맞게 조정해주세요.

  DiaryPlaceListWidget(this.place, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 여기서는 ref를 직접 사용할 수 있습니다.

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tap(
          onTap: () async {
           Nav.push(TestPostDetailScreen(place: place,));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              place.placeName.text.color(AppColors.primaryGrey).bold.make(),
              place.addr1.text
                  .color(AppColors.secondGrey)
                  .size(10)
                  .make()
                  .pSymmetric(v: 5),
            ],
          ),
        ),
        DiaryReviewListWidget(place.review),
      ],
    ).pSymmetric(h: 5);
  }
}
