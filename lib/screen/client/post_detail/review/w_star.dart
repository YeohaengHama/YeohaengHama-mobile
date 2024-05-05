import 'package:flutter/material.dart';

class StarRatingWidget extends StatelessWidget {
  final double score;

  const StarRatingWidget({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int fullStars = score.round(); // 반올림하여 가장 가까운 정수값을 얻습니다.
    List<Widget> starWidgets = [];

    // 전체 별을 생성합니다.
    for (int i = 0; i < 5; i++) {
      if (i < fullStars) {
        // 전체 별 중에서 현재 별의 인덱스가 평점보다 작을 경우,
        // 해당 별은 채워진 상태로 표시됩니다.
        starWidgets.add(Icon(Icons.star, color: Colors.orange,size: 15,));
      } else {
        // 나머지 별은 비어있는 상태로 표시됩니다.
        starWidgets.add(Icon(Icons.star_border, color: Colors.grey,size: 15,));
      }
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: starWidgets,
    );
  }
}
