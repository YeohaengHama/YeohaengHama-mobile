import 'dart:math';

import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../data/entity/itinerary/a_add_pick_place.dart';
import '../../../../../data/memory/area/selectedDayIndex_provider.dart';
import '../../../../../data/memory/itinerary/add_pick_each_place_provider.dart';

class ScheduleMapWidget extends ConsumerStatefulWidget {
  const ScheduleMapWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ScheduleMapWidget> createState() => _ScheduleMapWidgetState();
}

class _ScheduleMapWidgetState extends ConsumerState<ScheduleMapWidget> {
  late NaverMapController? _controller;
  late List<AddPickPlace> placeList;
  final List<NLatLng> placeCoordinates = [];
  bool _isControllerInitialized = false; // Flag to track controller initialization

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final selectedIndex = ref.watch(selectedDayIndexNotifierProvider);
        placeList = ref.watch(addPickEachPlaceProvider);

        if (_isControllerInitialized) {

          _updatePlaceCoordinates(selectedIndex);
        }
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
              _isControllerInitialized = true; // Set the flag to true when controller is initialized
              _updatePlaceCoordinates(selectedIndex);
              print("네이버 맵 로딩됨!");
            },
          ),
        );
      },
    );
  }

  void _updatePlaceCoordinates(int selectedIndex) {
    if (_controller == null) return;
    if (placeList.isEmpty) {
      // Logic to add default location when place list is empty
      _removeMarkers();
      placeCoordinates.clear();
      placeCoordinates.add(NLatLng(36, 128));
    } else {
      // Logic to update place coordinates when place list is not empty
      _removeMarkers();
      _controller!.clearOverlays();
      placeCoordinates.clear();
      for (final place in placeList) {
        if (place.day == selectedIndex + 1) {
          placeCoordinates.add(NLatLng(place.mapy, place.mapx));
        }
      }
      _addMarkers();
      _drawLines();
      _moveCameraToMarkers();
    }
  }

  void _addMarkers() {
    if (_controller == null) return;

    for (int i = 0; i < placeCoordinates.length; i++) {
      final markerId = 'marker$i';
      final marker = NMarker(
        icon: const NOverlayImage.fromAssetImage('$basePath/icon/hamaMarker.png'),
        id: markerId,
        position: placeCoordinates[i],
        caption: NOverlayCaption(text: (i + 1).toString()),
      );
      _controller!.addOverlay(marker);
    }
  }

  void _removeMarkers() {
    if (_controller == null) return;
    _controller!.clearOverlays();
  }

  void _drawLines() {
    if (_controller == null || placeCoordinates.length < 2) return;

    final polyline = NPolylineOverlay(
      coords: placeCoordinates,
      color: AppColors.forthGrey,
      width: 4,
      id: '',
    );
    _controller!.addOverlay(polyline);
  }

  void _moveCameraToMarkers() {
    if (placeCoordinates.isEmpty) return;

    final List<double> latitudes = [];
    final List<double> longitudes = [];
    for (final coord in placeCoordinates) {
      latitudes.add(coord.latitude);
      longitudes.add(coord.longitude);
    }

    final double minLat = latitudes.reduce((value, element) => min(value, element));
    final double maxLat = latitudes.reduce((value, element) => max(value, element));
    final double minLng = longitudes.reduce((value, element) => min(value, element));
    final double maxLng = longitudes.reduce((value, element) => max(value, element));

    final bounds = NLatLngBounds(
      southWest: NLatLng(minLat, minLng),
      northEast: NLatLng(maxLat, maxLng),
    );
    _controller!.updateCamera(
      NCameraUpdate.fitBounds(bounds, padding: EdgeInsets.symmetric(vertical: 70, horizontal: 70)),
    );
  }
}
