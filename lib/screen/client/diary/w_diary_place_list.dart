import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_star_rating.dart';
import 'package:fast_app_base/screen/client/diary/w_diary_map.dart';
import 'package:fast_app_base/screen/client/diary/w_diary_review_list.dart';
import 'package:flutter/material.dart';

import '../../../data/entity/diary/vo_detail_diary.dart';

class DiaryPlaceListWidget extends StatefulWidget {
  const DiaryPlaceListWidget(this.places, {super.key});
  final Place places;
  @override
  State<DiaryPlaceListWidget> createState() => _DiaryPlaceListWidgetState();
}

class _DiaryPlaceListWidgetState extends State<DiaryPlaceListWidget> {

  @override
  Widget build(BuildContext context) {
    final place = widget.places;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        place.placeName.text.color(AppColors.primaryGrey).bold.make(),
        place.addr1.text.color(AppColors.secondGrey).size(10).make().pSymmetric(v:5),
        DiaryReviewListWidget(place.review),


      ],
    ).pSymmetric(h: 5);
  }
}
