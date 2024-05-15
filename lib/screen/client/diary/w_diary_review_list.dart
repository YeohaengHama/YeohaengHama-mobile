import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_star_rating.dart';
import 'package:fast_app_base/screen/client/diary/w_diary_detail_image_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:nav_hooks/dialog/hook_consumer_dialog.dart';

import '../../../common/widget/w_image_scroll_view.dart';
import '../../../data/entity/diary/vo_detail_diary.dart';

class DiaryReviewListWidget extends StatefulWidget {
  const DiaryReviewListWidget(this.review, {Key? key}) : super(key: key);
  final Review? review;

  @override
  State<DiaryReviewListWidget> createState() => _DiaryReviewListWidgetState();
}

class _DiaryReviewListWidgetState extends State<DiaryReviewListWidget> {
  late PageController pageController; // PageController 변수를 선언합니다.

  @override
  void initState() {
    super.initState();
    pageController =
        PageController(); // initState 메서드 내에서 PageController를 초기화합니다.
  }

  @override
  Widget build(BuildContext context) {
    final _review = widget.review;
    if (_review == null) {
      // review가 null인 경우 빈 컨테이너 반환
      return Container();
    } else {
      // review가 null이 아닌 경우 Column 반환
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StarRating(score: _review.rating!).pOnly(bottom: 5),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              _review.content!,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              maxLines: 3,
              style: TextStyle(
                fontSize: 12,
                color: AppColors.primaryGrey,
              ),
            ),
          ),
          Height(10),
          if (_review.reviewPhotoURLList != null &&
              _review.reviewPhotoURLList!.isNotEmpty)
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: SizedBox(
                width: double.maxFinite,
                height: 200,
                child: DiaryRiviewImagesScrollWidget(
                  pageController: pageController,
                  review: _review,
                ),
              ),
            ),

        ],
      );
    }
  }
}
