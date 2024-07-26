import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_profile_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../../../common/dart/extension/datetime_extension.dart';
import '../../../../../../common/dart/extension/day_parser.dart';
import '../../../../../../data/entity/shorts/vo_shorts_comment.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key, required this.comment});
  final Comment comment;

  @override
  Widget build(BuildContext context) {
    // comment.date를 DateTime으로 변환
    final commentDate = comment.date;
    String timeDifference = 'Invalid date';

    if (commentDate != null) {
      timeDifference = getTimeDifference(commentDate);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileImage(photoUrl: comment.account.photoUrl, width: 35, height: 35),
        SizedBox(width: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(comment.account.nickname, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                SizedBox(width: 10),
                Text(timeDifference, style: TextStyle(fontSize: 12, color: AppColors.secondGrey)),
              ],
            ),
            Text(comment.comment, style: TextStyle(fontSize: 12)),
          ],
        ),
      ],
    );
  }
}
