import 'package:fast_app_base/common/widget/w_star_rating.dart';
import 'package:flutter/material.dart';

import '../../../data/entity/diary/vo_detail_diary.dart';

class DiaryReviewList extends StatelessWidget {
  final Map<String, List<Place>> places;

  const DiaryReviewList({Key? key, required this.places}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: places.entries.map((entry) {
        final title = entry.key;
        final placeList = entry.value;
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
            if (placeList.isNotEmpty)
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: placeList.length,
                itemBuilder: (BuildContext context, int index) {
                  final place = placeList[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StarRating(score: place.review!.rating),
                      Text('Content: ${place.review!.content}'),
                      // Review photo URLs
                      Text('Review Photos:'),
                      SizedBox(height: 5),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: place.review!.reviewPhotoURLList!.length,
                        itemBuilder: (BuildContext context, int photoIndex) {
                          final photoUrl = place.review!.reviewPhotoURLList![photoIndex];
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
