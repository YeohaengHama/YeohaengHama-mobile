import 'package:fast_app_base/common/widget/w_star_rating.dart';
import 'package:flutter/material.dart';

import '../../../data/entity/diary/vo_detail_diary.dart';

class DiaryReviewList extends StatelessWidget {
  final Map<int, List<Review>>? reviews;

  const DiaryReviewList({Key? key, this.reviews}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: reviews!.entries.map((entry) {
        final title = entry.key;
        final reviewList = entry.value;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            if (reviewList.isNotEmpty)
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: reviewList.length,
                itemBuilder: (BuildContext context, int index) {
                  final review = reviewList[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StarRating(score: review.rating),
                      Text('Content: ${review.content}'),
                      // Review photo URLs
                      Text('Review Photos:'),
                      SizedBox(height: 5),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: review.reviewPhotoURLList.length,
                        itemBuilder: (BuildContext context, int photoIndex) {
                          final photoUrl = review.reviewPhotoURLList[photoIndex];
                          return Text(photoUrl);
                        },
                      ),
                      SizedBox(height: 10),
                    ],
                  );
                },
              ),
          ],
        );
      }).toList(),
    );
  }
}
