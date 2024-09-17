import 'package:flutter/material.dart';

import '../../../../../../../data/entity/bot/chat_bot.dart';

class ShortsWidget extends StatelessWidget {
  final Shorts shorts;

  const ShortsWidget({required this.shorts});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shorts',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
        ),
        SizedBox(height: 10),
        Text(shorts.title, style: TextStyle(fontSize: 14, color: Colors.black)),
        SizedBox(height: 5),
        // 동영상 미리보기나 링크 추가
        Text('동영상 URL: ${shorts.videoUrl}', style: TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}
