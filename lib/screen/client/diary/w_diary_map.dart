import 'dart:math';

import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/entity/diary/vo_detail_diary.dart';

class DiaryMapWidget extends ConsumerStatefulWidget {
  const DiaryMapWidget(this.placeList, {Key? super.key});
  final List<Place> placeList;
  @override
  ConsumerState<DiaryMapWidget> createState() => _DiaryMapWidgetState();
}
class _DiaryMapWidgetState extends ConsumerState<DiaryMapWidget> {
  late NaverMapController _controller;
  late List<Place> placeList = widget.placeList;
  final List<NLatLng> placeCoordinates = [];

  @override
  Widget build(BuildContext context) {
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
          _updatePlaceCoordinates();
          _addMarkers();
          _drawLines();
          _moveCameraToMarkers(); // 카메라를 마커가 모두 보이는 위치로 이동
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
        icon: const NOverlayImage.fromAssetImage('$basePath/icon/hamaMarker.png'),
        size: Size(60,30),
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
  void _moveCameraToMarkers() {
    if (placeCoordinates.isEmpty) return;

    // 모든 마커의 위도와 경도를 추출합니다.
    final List<double> latitudes = [];
    final List<double> longitudes = [];
    for (final coord in placeCoordinates) {
      latitudes.add(coord.latitude);
      longitudes.add(coord.longitude);
    }

    // 위도와 경도의 최소값과 최대값을 찾습니다.
    final double minLat = latitudes.reduce((value, element) => min(value, element));
    final double maxLat = latitudes.reduce((value, element) => max(value, element));
    final double minLng = longitudes.reduce((value, element) => min(value, element));
    final double maxLng = longitudes.reduce((value, element) => max(value, element));

    // 모든 마커를 포함하는 경계를 생성합니다.
    final bounds = NLatLngBounds(
      southWest: NLatLng(minLat, minLng),
      northEast: NLatLng(maxLat, maxLng),
    );

    // Calculate padding based on the number of items in the list
    final padding = EdgeInsets.symmetric(
      vertical: max(170, (placeCoordinates.length == 1 ? 140 : 170)), // Adjust the vertical padding dynamically
      horizontal: max(100, (placeCoordinates.length == 1 ? 140 : 170)), // Adjust the horizontal padding dynamically
    );

    // 카메라를 경계 영역으로 이동시킵니다.
    _controller.updateCamera(
      NCameraUpdate.fitBounds(bounds, padding: padding),
    );
  }
}
