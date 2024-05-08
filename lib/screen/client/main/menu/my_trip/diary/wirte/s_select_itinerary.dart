
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/diary/wirte/w_select_itinerary_list.dart';
import 'package:flutter/material.dart';

class SelectItineraryScreen extends StatelessWidget {
  const SelectItineraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
        leading: IconButton(
        icon: Icon(Icons.arrow_back),
    onPressed: () {
    Navigator.of(context).pop(); // 뒤로 가기 기능 구현
    },
    ),

    ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          '여행일기를 작성할 일정을\n선택해주세요.'.text.bold.size(28).color(AppColors.primaryGrey).make(),
          Height(50),
          Row(
            children: [
              '하마'.text.color(AppColors.mainPurple).size(15).bold.make(), // '하마' 텍스트만 색상을 변경합니다.
              '와 함께한 여행'.text.bold.size(15).color(AppColors.primaryGrey).make(), // 나머지 텍스트는 원래 색상을 유지합니다.
            ],
          ),
          SelectItineraryList(),
        ],
      ).pSymmetric(h: 30, v: 15),

    );
  }
}
