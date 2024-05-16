import 'dart:math';

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
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        placeList = ref.watch(addPickEachPlaceProvider);
        _updatePlaceCoordinates();
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
              print("네이버 맵 로딩됨!");
            },
          ),
        );
      },
    );
  }

  void _updatePlaceCoordinates() {
    if (_controller == null) return;
    if (placeList.isEmpty) {
      // 기본 위치를 추가하는 로직을 여기에 작성합니다.
      _removeMarkers();
      placeCoordinates.clear();
      placeCoordinates.add(NLatLng(36, 128));
    } else {
      // 리스트가 비어있지 않은 경우, 기존의 위치 정보를 초기화하고 새로운 위치 정보를 추가합니다.
      _removeMarkers();
      _controller.clearOverlays();
      placeCoordinates.clear(); // 기존의 위치 정보 초기화
      for (final place in placeList) {
        placeCoordinates.add(NLatLng(place.mapy, place.mapx));
      }
      _addMarkers(); // 위치 정보를 업데이트 한 후에 마커를 추가합니다.
      _drawLines(); // 위치 정보를 업데이트 한 후에 라인을 그립니다.
    }
  }

  void _addMarkers() {
    if (_controller == null) return; // 이 위치에 널 체크를 추가합니다.

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
    if (_controller == null) return;
    _controller.clearOverlays(); // 이전에 추가된 모든 마커 제거
  }
  void _drawLines() {
    if (_controller == null || placeCoordinates.length < 2) return; // 여기에 널 체크를 추가합니다.

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
    // 카메라를 경계 영역으로 이동시킵니다.
    _controller.updateCamera(
      NCameraUpdate.fitBounds(bounds, padding: EdgeInsets.symmetric(vertical: 50,horizontal: 50)),

    );
  }
}
