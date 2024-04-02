import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
class mapWidget extends StatefulWidget {
  const mapWidget({super.key});
  @override
  State<mapWidget> createState() => _mapWidgetState();
}
class _mapWidgetState extends State<mapWidget> {
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