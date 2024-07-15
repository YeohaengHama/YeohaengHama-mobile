import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';

class SearchLocationArea extends StatefulWidget {
  const SearchLocationArea({Key? key, this.mapX = 126.979, this.mapY = 37.566}) : super(key: key);
  final double mapX;
  final double mapY;

  @override
  _SearchLocationAreaState createState() => _SearchLocationAreaState();
}

class _SearchLocationAreaState extends State<SearchLocationArea> {
  late NaverMapController _controller;
  late NLatLng placeLatLng;
  bool _isControllerInitialized = false;

  @override
  void initState() {
    super.initState();
    placeLatLng = NLatLng(widget.mapY, widget.mapX);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Location'),
      ),
      body: Stack(
        children: [
          NaverMap(
            onMapReady: (controller) {
              _controller = controller;
              _isControllerInitialized = true;
              _addMarker();
              print("Naver Map loaded!");
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
          Positioned(
            top: 16,
            right: 16,
            child: GestureDetector(
              onTap: _getCurrentLocation,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.gps_fixed,
                  color: AppColors.mainPurple,
                  size: 32,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _addMarker() {
    if (_controller != null) {
      _controller.addOverlay(NMarker(
        id: 'current_location_marker',
        position: placeLatLng,
      ));
    }
  }

  void _getCurrentLocation() async {
    try {
      var position = await Geolocator.getCurrentPosition();
      setState(() {
        placeLatLng = NLatLng(position.latitude, position.longitude);
      });
      if (_controller != null) {
        _controller.updateCamera(
          NCameraUpdate.scrollAndZoomTo(
            target: placeLatLng,
            zoom: 5,
          ),
        );
        _addMarker();
      }
    } catch (e) {
      print("Error getting current location: $e");
    }
  }

  void _checkPermissionAndGetCurrentLocation() async {
    var status = await Permission.location.request();
    var locationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (status.isGranted) {
      // 위치 권한 승인됨
      if (locationServiceEnabled) {
        // 위치 서비스 활성화 상태
        _getCurrentLocation();
      } else {
        // 위치 서비스 비활성화 상태
        print("Location services are disabled");
      }
    } else if (status.isPermanentlyDenied) {
      // 권한 영구적으로 거부됨
      print("Location permission is permanently denied");
      openAppSettings(); // 설정 화면으로 이동하여 권한 설정 유도
    } else {
      // 권한 거부됨
      print("Location permission denied");
    }
  }
}
