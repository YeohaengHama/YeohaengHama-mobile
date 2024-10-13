import 'dart:math';

import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:geocoding/geocoding.dart'; // Geocoding 패키지 추가
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../../data/entity/itinerary/a_add_pick_place.dart';
import '../../../../../data/memory/area/selectedDayIndex_provider.dart';
import '../../../../../data/memory/itinerary/add_pick_each_place_provider.dart';
import '../../../../../data/network/traffic_api.dart';
import 'f_gps_map.dart';

class ScheduleMapWidget extends ConsumerStatefulWidget {
  const ScheduleMapWidget({Key? super.key});

  @override
  ConsumerState<ScheduleMapWidget> createState() => _ScheduleMapWidgetState();
}

class _ScheduleMapWidgetState extends ConsumerState<ScheduleMapWidget> {
  late NaverMapController _controller;
  late List<AddPickPlace> placeList;
  final List<NLatLng> placeCoordinates = [];
  bool _isControllerInitialized = false;
  StreamSubscription<Position>? _positionStreamSubscription;
  NMarker? _currentLocationMarker;
  Position? _currentPosition;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _startLocationTracking();
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
          body: Stack(
            children: [
              NaverMap(
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
                  _isControllerInitialized = true;
                  _updatePlaceCoordinates(selectedIndex);
                  print("네이버 맵 로딩됨!");
                },
              ),
              Positioned(
                bottom: 16,
                right: 16,
                child: Tap(
                  onTap: () {
                    _refreshCurrentLocation();
                  },
                  child: Icon(Icons.my_location),
                ),
              ),
              if (_isLoading)
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.black.withOpacity(0.3),
                    ),
                    Center(
                        child: LoadingAnimationWidget.fourRotatingDots(
                            color: AppColors.mainPurple, size: 100)),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }

  void _startLocationTracking() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      print('Location services are disabled.');
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        print('Location permission denied.');
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      print('Location permission denied forever.');
      return;
    }

    _positionStreamSubscription = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10,
      ),
    ).listen((Position position) async {
      // print('Current position: ${position.latitude}, ${position.longitude}');
      if (_isControllerInitialized) {
        _currentPosition = position;
        _updateCurrentLocationMarker(position);
      }
    });

    // 초기 위치 가져오기
    _currentPosition = await Geolocator.getCurrentPosition();
    if (_currentPosition != null) {
      _updateCurrentLocationMarker(_currentPosition!);
    }
  }

  void _updateCurrentLocationMarker(Position position) {
    if (!_isControllerInitialized) return;

    final currentLocation = NLatLng(position.latitude, position.longitude);

    // 현재 위치 마커가 존재하면 삭제
    if (_currentLocationMarker != null) {
      final overlayInfo = NOverlayInfo(
        type: NOverlayType.marker, // 마커 타입
        id: _currentLocationMarker!.info.id, // 기존 마커의 ID
      );
      _controller.deleteOverlay(overlayInfo);
    }

    // 새로운 위치에 마커 생성 및 추가
    _currentLocationMarker = NMarker(
      id: 'current_location', // 고유 ID
      position: currentLocation,
      iconTintColor: AppColors.deepPurple,
      caption: const NOverlayCaption(text: '현재 위치'),
    );

    // 새 마커 추가
    _controller.addOverlay(_currentLocationMarker!);
  }

  void _refreshCurrentLocation() {
    if (_currentPosition != null && _isControllerInitialized) {
      final currentLocation = NLatLng(_currentPosition!.latitude, _currentPosition!.longitude);
      _controller.updateCamera(
        NCameraUpdate.fromCameraPosition(
          NCameraPosition(
            target: currentLocation,
            zoom: 15.0,
          ),
        ),
      );
    }
  }

  @override
  void dispose() {
    _positionStreamSubscription?.cancel();
    super.dispose();
  }

  void _updatePlaceCoordinates(int selectedIndex) {
    if (!_isControllerInitialized) return;

    if (placeList.isEmpty) {
      _removeMarkers();
      placeCoordinates.clear();
      placeCoordinates.add(const NLatLng(36, 128));
    } else {
      _removeMarkers();
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
    if (!_isControllerInitialized) return;

    for (int i = 0; i < placeCoordinates.length; i++) {
      final markerId = 'marker$i';
      final marker = NMarker(
        icon: const NOverlayImage.fromAssetImage('$basePath/icon/hamaMarker.png'),
        size: const Size(60, 30),
        id: markerId,
        position: placeCoordinates[i],
        caption: NOverlayCaption(text: (i + 1).toString()),
      );

      // 마커 클릭 이벤트 리스너 추가
      marker.setOnTapListener((marker) {
        _onMarkerTap(marker);
        return true;
      });

      _controller.addOverlay(marker);
    }
  }

  void _removeMarkers() {
    if (!_isControllerInitialized) return;
    _controller.clearOverlays();
  }

  void _drawLines() {
    if (!_isControllerInitialized || placeCoordinates.length < 2) return;

    final polyline = NPolylineOverlay(
      coords: placeCoordinates,
      color: AppColors.forthGrey,
      width: 4,
      id: 'route_line',
    );
    _controller.addOverlay(polyline);
  }

  void _moveCameraToMarkers() {
    if (placeCoordinates.isEmpty) return;

    final List<double> latitudes = [];
    final List<double> longitudes = [];
    for (final coord in placeCoordinates) {
      latitudes.add(coord.latitude);
      longitudes.add(coord.longitude);
    }

    final double minLat =
    latitudes.reduce((value, element) => min(value, element));
    final double maxLat =
    latitudes.reduce((value, element) => max(value, element));
    final double minLng =
    longitudes.reduce((value, element) => min(value, element));
    final double maxLng =
    longitudes.reduce((value, element) => max(value, element));

    final bounds = NLatLngBounds(
      southWest: NLatLng(minLat, minLng),
      northEast: NLatLng(maxLat, maxLng),
    );
    _controller.updateCamera(
      NCameraUpdate.fitBounds(bounds,
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 70)),
    );
  }

  void _onMarkerTap(NMarker marker) async {
    if (_currentPosition == null) return;
    setState(() {
      _isLoading = true; // 로딩 상태 시작
    });
    final currentLocation = _currentPosition!;
    final markerPosition = marker.position;
    final trafficApiProviderRead = ref.read(trafficApiProvider);

    await trafficApiProviderRead.getInfoTraffic(
        currentLocation.longitude,
        currentLocation.latitude,
        markerPosition.longitude,
        markerPosition.latitude,
        ref);
    await trafficApiProviderRead.getInfoCarTraffic(
        currentLocation.longitude,
        currentLocation.latitude,
        markerPosition.longitude,
        markerPosition.latitude,
        ref);
    setState(() {
      _isLoading = false; // 로딩 상태 종료
    });

    // 현재 위치를 도로명 주소로 변환
    String currentAddress = await _getAddressFromCoordinates(
        currentLocation.latitude, currentLocation.longitude);

    // 마커의 placeName을 얻기 위해 placeList를 검색합니다.
    final markerPlace = placeList.firstWhere(
          (place) => NLatLng(place.mapy, place.mapx) == markerPosition,
    );
    final markerPlaceName = markerPlace.placeName;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: SizedBox(
                height: 700,
                child: GpsMapDialog(currentLocation, markerPosition,
                    currentAddress, markerPlaceName!))
                .pSymmetric(v: 15));
      },
    );
  }

  // 도로명 주소를 얻는 함수
  Future<String> _getAddressFromCoordinates(
      double latitude, double longitude) async {
    try {
      List<Placemark> placemarks =
      await placemarkFromCoordinates(latitude, longitude);
      if (placemarks.isNotEmpty) {
        Placemark placemark = placemarks.first;
        return '${placemark.street}, ${placemark.locality}, ${placemark.country}';
      }
    } catch (e) {
      print('Error getting address: $e');
    }
    return '주소를 찾을 수 없습니다';
  }
}
