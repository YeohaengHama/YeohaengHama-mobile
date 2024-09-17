import 'package:flutter/material.dart';
import '../../../../../../../data/entity/bot/chat_bot.dart';

class ItineraryWidget extends StatelessWidget {
  final Itinerary itinerary;

  const ItineraryWidget({required this.itinerary});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '여행 일정',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
        ),
        SizedBox(height: 10),
        Text('지역: ${itinerary.area}', style: TextStyle(fontSize: 14, color: Colors.black)),
        Text('이름: ${itinerary.name}', style: TextStyle(fontSize: 14, color: Colors.black)),
      ],
    );
  }
}
