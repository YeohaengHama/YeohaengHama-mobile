import 'package:flutter/material.dart';

import '../../../../entity/area/vo_review.dart';




class ReviewStar extends StatelessWidget  {
  final List<Review> reviewList;
  const ReviewStar(this.reviewList, {Key? key, this.starSize=20.0}) : super(key: key);
  final starSize;


  @override
  Widget build(BuildContext context) {
    double averageScore = _calculateAverageScore();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildStarIcon(averageScore, 1),
        _buildStarIcon(averageScore, 2),
        _buildStarIcon(averageScore, 3),
        _buildStarIcon(averageScore, 4),
        _buildStarIcon(averageScore, 5),
        Text(
          averageScore.toStringAsFixed(1),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildStarIcon(double averageScore, int index) {

    if (averageScore >= index) {
      return  Icon(Icons.star, color: Colors.orangeAccent,size: starSize,);
    } else if (averageScore >= index - 0.5) {
      // 별 반개인 경우
      return const Icon(
        Icons.star_half,
        color: Colors.orangeAccent,
          size: 20
      );
    } else {
      // 일반적인 빈 별
      return  Icon(Icons.star_border, color: Colors.orangeAccent,size: starSize);
    }
  }

  double _calculateAverageScore() {
    if (reviewList.isEmpty) {
      return 0.0;
    }

    double totalScore = reviewList.map((review) => review.score).reduce((value, element) => value + element).toDouble();
    return totalScore / reviewList.length;
  }
}
