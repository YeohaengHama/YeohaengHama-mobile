import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../../../common/dart/extension/calculate_distance.dart';
import '../../../../../../data/entity/itinerary/a_add_pick_place.dart';
import '../../../../../../data/entity/itinerary/vo_pick_place.dart';

class DayPlaceListWidget extends StatefulWidget {
  final List<AddPickPlace> addPickPlace;
  final int day;
  final PickPlace pickPlace;

  const DayPlaceListWidget({
    required this.addPickPlace,
    required this.day,
    required this.pickPlace,
    Key? key,
  }) : super(key: key);

  @override
  _DayPlaceListWidgetState createState() => _DayPlaceListWidgetState();
}

class _DayPlaceListWidgetState extends State<DayPlaceListWidget> {
  bool _showList = false; // 리스트를 보여줄지 여부

  @override
  Widget build(BuildContext context) {
    if (widget.addPickPlace.isEmpty) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDayHeader(),
          _buildAddButton(),
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDayHeader(),
        _buildAddButton(),
        if (_showList) ...widget.addPickPlace.map((place) => ListTile(
          title: Text(place.placeName!), // 장소의 이름을 표시
          subtitle: Text(
            '${calculateDistance(
              double.parse(widget.pickPlace.mapy),
              double.parse(widget.pickPlace.mapx),
              place.mapy,
              place.mapx,
            ).toStringAsFixed(1)} km',
            style: TextStyle(
              color: AppColors.primaryGrey,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
          ),
        )).toList(), // 수직 리스트로 표시
      ],
    );
  }

  Widget _buildDayHeader() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _showList = !_showList; // 리스트의 표시 여부를 토글
        });
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: AppColors.outline, // 배경 색상
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Row(
            children: [
              Text('Day ${widget.day}', style: TextStyle(color: AppColors.secondGrey, fontWeight: FontWeight.bold)),
              Text(
                ' ${widget.addPickPlace.length}개의 장소',
                style: TextStyle(color: AppColors.thirdGrey, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAddButton() {
    return Container(

      child: GestureDetector(
        onTap: () {
          // 추가 버튼 클릭 시의 행동 정의
          // 예: 다이얼로그 열기, 새 장소 추가 등
        },
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, color: AppColors.secondGrey), // + 아이콘
              ],
            ),
          ),
        ),
      ),
    );
  }
}
