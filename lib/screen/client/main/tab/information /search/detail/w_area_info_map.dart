import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../data/memory/area/search_location_result_provider.dart';
import '../../../../../../../data/entity/open_api/search_location_result.dart';  // SearchLocationResult 경로를 확인하세요

class AreaInfoMap extends ConsumerStatefulWidget {
  const AreaInfoMap({Key? key, this.mapX = 126.979, this.mapY = 37.566}) : super(key: key);
  final double mapX;
  final double mapY;

  @override
  ConsumerState<AreaInfoMap> createState() => _AreaInfoMapState();
}

class _AreaInfoMapState extends ConsumerState<AreaInfoMap> {
  late NaverMapController _controller;
  late NLatLng placeLatLng;
  NInfoWindow? _currentInfoWindow;

  @override
  void initState() {
    super.initState();
    placeLatLng = NLatLng(widget.mapY, widget.mapX);
  }

  @override
  Widget build(BuildContext context) {
    final searchLocationList = ref.watch(searchLocationProvider);

    return NaverMap(
      onMapReady: (controller) {
        _controller = controller;
        _addMarker();  // 생성자로 받은 좌표의 마커 추가
        _addSearchLocationMarkers(searchLocationList);  // 검색된 좌표의 마커 추가
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
    final marker = NMarker(
      id: 'initial_marker',
      position: placeLatLng,
      caption: NOverlayCaption(text: 'Initial Location'),
    );

    marker.setOnTapListener((NMarker marker) {
      _showInfoDialog(
        title: 'Initial Location',
        content: 'This is the initial location marker.',
      );
      return true;
    });

    _controller.addOverlay(marker);
    print("Initial marker added: $placeLatLng");
  }

  void _addSearchLocationMarkers(List<SearchLocationResult> locations) {
    for (var location in locations) {
      final marker = NMarker(
        id: location.contentid,
        position: NLatLng(double.parse(location.mapy), double.parse(location.mapx)),
        caption: NOverlayCaption(text: location.title),
      );

      marker.setOnTapListener((NMarker marker) {
        _showInfoDialog(
          title: location.title,
          content: 'Address: ${location.addr1 ?? ''}\n${location.addr2 ?? ''}',
        );
        return true;
      });

      _controller.addOverlay(marker);
      print("Marker added: ${location.title} at (${location.mapx}, ${location.mapy})");
    }
  }

  void _showInfoDialog({required String title, required String content}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
