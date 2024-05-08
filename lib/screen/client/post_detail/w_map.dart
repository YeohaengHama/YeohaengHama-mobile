
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class MapWidget extends StatefulWidget {
  const MapWidget({Key? key, this.mapX =126.979, this.mapY = 37.566}) : super(key: key);
  final double mapX;
  final double mapY;
  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {

  late NaverMapController _controller;
  late NLatLng placeLatLng;

  @override
  void initState() {
    super.initState();
    placeLatLng = NLatLng(widget.mapY, widget.mapX);
  }

  @override
  Widget build(BuildContext context) {
    return NaverMap(
      onMapReady:(controller) {
        _controller = controller;
        _addMarker();
        print("네이버 맵 로딩됨!");
      },
      forceGesture: true,
      options: NaverMapViewOptions(
        initialCameraPosition: NCameraPosition(
          target: placeLatLng,
          zoom: 17,
        ),
        mapType: NMapType.basic,
      ),

    );
  }

  void _addMarker() {
    _controller.addOverlay(NMarker(
      id: 'test',
      position: placeLatLng,
    ));
  }
}
