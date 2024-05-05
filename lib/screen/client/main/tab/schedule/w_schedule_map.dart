import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
class ScheduleMapWidget extends StatefulWidget {
  const ScheduleMapWidget({super.key});
  @override
  State<ScheduleMapWidget> createState() => _ScheduleMapWidgetState();
}
class _ScheduleMapWidgetState extends State<ScheduleMapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NaverMap(
        options: const NaverMapViewOptions(
          mapType: NMapType.basic,
          activeLayerGroups: [
            NLayerGroup.building,
            NLayerGroup.transit
          ], // default : [NLayerGrou
        ),

        onMapReady: (controller) {
          print("네이버 맵 로딩됨!");
        },
      ),
    );
  }
}