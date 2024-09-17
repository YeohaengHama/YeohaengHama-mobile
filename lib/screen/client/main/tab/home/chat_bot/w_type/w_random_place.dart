import 'package:flutter/material.dart';

import '../../../../../../../data/entity/bot/chat_bot.dart';

class RandomPlaceWidget extends StatelessWidget {
  final RandomPlace randomPlace;

  const RandomPlaceWidget({required this.randomPlace});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '무작위 장소',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
        ),
        SizedBox(height: 10),
        Text('이름: ${randomPlace.name ?? '정보 없음'}', style: TextStyle(fontSize: 14, color: Colors.black)),
        SizedBox(height: 5),
        Text('주소: ${randomPlace.addr1}', style: TextStyle(fontSize: 12, color: Colors.grey)),
        if (randomPlace.image != null)
          Image.network(randomPlace.image!, width: 100, height: 100, fit: BoxFit.cover),
      ],
    );
  }
}
