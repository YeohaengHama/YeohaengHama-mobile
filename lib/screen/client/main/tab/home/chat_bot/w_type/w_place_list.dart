import 'package:flutter/material.dart';
import '../../../../../../../data/entity/bot/chat_bot.dart';
class PlaceListWidget extends StatelessWidget {
  final List<Place> places;

  const PlaceListWidget({required this.places});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '추천 장소',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
        ),
        SizedBox(height: 10),
        ...places.map((place) {
          return ListTile(
            leading: place.firstimage != null
                ? Image.network(place.firstimage!, width: 50, height: 50, fit: BoxFit.cover)
                : Icon(Icons.location_on, size: 50),
            title: Text(place.title),
            subtitle: Text(place.addr1),
            onTap: () {
              // 장소 세부 정보 화면으로 이동
            },
          );
        }),
      ],
    );
  }
}
