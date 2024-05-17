import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../data/entity/review/a_review_show_all.dart';
import '../../../../data/memory/review/review_show_all_provider.dart';
import '../../../../entity/area/vo_review.dart';

class ReviewStar extends ConsumerWidget {
  const ReviewStar({Key? key, this.starSize = 20.0}) : super(key: key);
  final double starSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reviews = ref.watch(ReviewShowAllListProvider);
    double averageScore = _calculateAverageScore(reviews);

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
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildStarIcon(double averageScore, int index) {
    if (averageScore >= index) {
      return Icon(Icons.star, color: Colors.orangeAccent, size: starSize);
    } else if (averageScore >= index - 0.5) {
      return Icon(Icons.star_half, color: Colors.orangeAccent, size: starSize);
    } else {
      return Icon(Icons.star_border, color: Colors.orangeAccent, size: starSize);
    }
  }

  double _calculateAverageScore(List<ReviewShowAll> reviews) {
    if (reviews.isEmpty) {
      return 0.0;
    }
    double totalScore = reviews
        .map((review) => review.rating)
        .reduce((value, element) => value + element)
        .toDouble();
    return totalScore / reviews.length;
  }
}
