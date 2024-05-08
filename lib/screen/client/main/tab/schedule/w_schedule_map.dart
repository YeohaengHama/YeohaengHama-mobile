import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../data/entity/itinerary/a_add_pick_place.dart';
import '../../../../../data/memory/itinerary/add_pick_each_place_provider.dart';

class ScheduleMapWidget extends ConsumerStatefulWidget {
  const ScheduleMapWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ScheduleMapWidget> createState() => _ScheduleMapWidgetState();
}

class _ScheduleMapWidgetState extends ConsumerState<ScheduleMapWidget> {
  late NaverMapController _controller;
  late List<AddPickPlace> placeList;
  final List<NLatLng> placeCoordinates = [];


  @override
  Widget build(BuildContext context) {
    placeList = ref.watch(addPickEachPlaceProvider);
    _removeMarkers();
    _updatePlaceCoordinates();
    _addMarkers();
    _drawLines();
    return Scaffold(
      body: NaverMap(
        forceGesture: true,
        options: const NaverMapViewOptions(
          mapType: NMapType.basic,
          activeLayerGroups: [
            NLayerGroup.building,
            NLayerGroup.transit,
          ],
        ),
        onMapReady: (controller) {
          _controller = controller;
          _addMarkers();
          _drawLines();
          print("네이버 맵 로딩됨!");
        },
      ),
    );
  }

  void _updatePlaceCoordinates() {
    placeCoordinates.clear(); // 기존의 위치 정보 초기화
    for (final place in placeList) {
      placeCoordinates.add(NLatLng(place.mapy, place.mapx));
    }
    print('애야$placeCoordinates');
  }

  void _addMarkers() {
    for (int i = 0; i < placeCoordinates.length; i++) {
      final markerId = 'marker$i';
      final marker = NMarker(
        icon: const NOverlayImage.fromAssetImage('$basePath/icon/hama-2.png'),
        id: markerId,
        position: placeCoordinates[i],
        caption: NOverlayCaption(text: (i + 1).toString()), // 인덱스 번호를 마커에 출력
      );
      _controller.addOverlay(marker);
    }
  }
  void _removeMarkers() {
    _controller.clearOverlays(); // 이전에 추가된 모든 마커 제거
  }
  void _drawLines() {
    if (placeCoordinates.length < 2) return;

    final polyline = NPolylineOverlay(
      coords: placeCoordinates,
      color: AppColors.forthGrey,
      width: 4,
      id: '',
    );
    _controller.addOverlay(polyline);
  }
}
