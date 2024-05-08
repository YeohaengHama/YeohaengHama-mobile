
import 'package:flutter/material.dart';

import '../../../common/common.dart';
import '../../../common/constant/app_colors.dart';



class PutReviewStar extends StatefulWidget {
  final int maxRating;
  final Function(int) onRatingChanged;

  PutReviewStar({required this.maxRating, required this.onRatingChanged});

  @override
  _PutReviewStarState createState() => _PutReviewStarState();
}

class _PutReviewStarState extends State<PutReviewStar> {
  int _currentRating = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(widget.maxRating, (index) {
          return Column(
            children: [InkWell(
              onTap: () {
                setState(() {
                  _currentRating = index + 1;
                });
                widget.onRatingChanged(_currentRating);
              },
              child: Icon(
                index < _currentRating ? Icons.star : Icons.star_border,
                color: Colors.yellow,
                size: 40,
              ),
            ),

          ]
          );
        }),
      ),
        const Height(10),
        Text(
          (() {
            switch (_currentRating) {
              case 0:
                return '별점을 선택해주세요!';
              case 1:
                return '별로예요';
              case 2:
                return '조금 아쉬워요';
              case 3:
                return '주위에 있다면 가볼만해요';
              case 4:
                return '꽤 가볼만해요';
              case 5:
                return '꼭 가야하는 곳이예요';
              default:
                return '';
            }
          })(),
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.primaryGrey),
        ),
    ]
    );
  }
}