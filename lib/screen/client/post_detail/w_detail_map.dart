import 'dart:math';
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../data/entity/itinerary/a_add_pick_place.dart';
import '../../../../../data/memory/area/selectedDayIndex_provider.dart';
import '../../../../../data/memory/itinerary/add_pick_each_place_provider.dart';

class DetailMapWidget extends ConsumerStatefulWidget {
  const DetailMapWidget({Key? super.key, this.mapX = 126.979, this.mapY = 37.566});
  final double mapX;
  final double mapY;

  @override
  ConsumerState<DetailMapWidget> createState() => _DetailMapWidgetState();
}

class _DetailMapWidgetState extends ConsumerState<DetailMapWidget> {
  late NaverMapController _controller;
  late NLatLng placeLatLng;
  late List<AddPickPlace> placeList;
  final List<NLatLng> placeCoordinates = [];
  bool _isControllerInitialized = false;

  @override
  void initState() {
    super.initState();
    placeLatLng = NLatLng(widget.mapY, widget.mapX);
  }

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
            onMapReady: (controller) {
              _controller = controller;
              _isControllerInitialized = true;
              _updatePlaceCoordinates(selectedIndex);
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
          ),
        );
      },
    );
  }

  void _addSingleMarker() {
    _controller.addOverlay(NMarker(
      id: 'single_marker',
      position: placeLatLng,
    ));
  }

  void _updatePlaceCoordinates(int selectedIndex) {
    _removeMarkers();
    _addSingleMarker(); // Ensure the single marker is added back after removing all markers
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

  void _addMarkers() {
    for (int i = 0; i < placeCoordinates.length; i++) {
      final markerId = 'marker${i + 1}';
      final marker = NMarker(
        icon: const NOverlayImage.fromAssetImage('$basePath/icon/hamaMarker.png'),
        size: Size(60,30),
        id: markerId,
        position: placeCoordinates[i],
        caption: NOverlayCaption(text: (i + 1).toString()),
      );
      _controller.addOverlay(marker);
    }
  }

  void _removeMarkers() {
    _controller.clearOverlays();
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

    final List<double> latitudes = [placeLatLng.latitude];
    final List<double> longitudes = [placeLatLng.longitude];
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

    _controller.updateCamera(
      NCameraUpdate.fitBounds(bounds, padding: EdgeInsets.symmetric(vertical: 70, horizontal: 70)),
    );
  }
}
