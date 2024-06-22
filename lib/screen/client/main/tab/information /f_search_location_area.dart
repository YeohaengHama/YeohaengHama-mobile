import 'package:flutter/material.dart';

import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../data/network/area_api.dart';

class SearchLocationArea extends ConsumerStatefulWidget {
  const SearchLocationArea({Key? key, this.mapX =126.979, this.mapY = 37.566}) : super(key: key);
  final double mapX;
  final double mapY;
  @override
  ConsumerState<SearchLocationArea> createState() => _SearchLocationAreaState();
}

class _SearchLocationAreaState extends ConsumerState<SearchLocationArea> {

  late NaverMapController _controller;
  late NLatLng placeLatLng;

  // final areaApi = ref.read(AlwaysAliveRefreshabl)
  @override
  void initState() {
    super.initState();
    placeLatLng = NLatLng(widget.mapY, widget.mapX);
    // areaApi = areaApiProvider

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

