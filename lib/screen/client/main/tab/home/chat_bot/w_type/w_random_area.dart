import 'package:flutter/material.dart';
import '../../../../../../../data/entity/bot/chat_bot.dart';

class RandomAreaWidget extends StatelessWidget {
  final RandomArea randomArea;

  const RandomAreaWidget({required this.randomArea});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '무작위 지역',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
        ),
        SizedBox(height: 10),
        Text('지역: ${randomArea.area}', style: TextStyle(fontSize: 14, color: Colors.black)),
      ],
    );
  }
}
