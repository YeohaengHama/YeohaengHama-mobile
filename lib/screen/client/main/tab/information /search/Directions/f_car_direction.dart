import 'dart:math';

import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/information%20/search/Directions/w_bouncing_marker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../../data/entity/traffic/vo_route_summary.dart';
import '../../../../../../../data/memory/traffic/info_car_traffic_provider.dart';
import '../../../schedule/traffic/w_public_transport_map.dart';

class CarDirectionFragment extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final carTrafficInfoAsync = ref.read(infoCarTrafficProvider);
    final controllerProvider = StateProvider<NaverMapController?>((ref) => null);

    return Scaffold(
      body: carTrafficInfoAsync.when(
        data: (carTrafficInfo) {
          // 출발지와 도착지 좌표
          final startPoint = carTrafficInfo.trafast.first.path.first;
          final endPoint = carTrafficInfo.trafast.first.path.last;

          return FutureBuilder<List<NAddableOverlay>>(
            future: _createOverlaysAsync(carTrafficInfo.trafast, startPoint, endPoint),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                final overlays = snapshot.data ?? [];

                return Column(
                  children: [
                    Expanded(
                      child: TransportMap(
                        overlays: overlays,
                        onMapReady: (controller) async {
                          ref.read(controllerProvider.notifier).state = controller;
                          await _moveCameraToRoute(ref, overlays, controllerProvider);
                        },
                      ),
                    ),
                  ],
                );
              }
            },
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }

  Future<List<NAddableOverlay>> _createOverlaysAsync(List<RouteSummary> routeSummaries, RoutePoint startPoint, RoutePoint endPoint) async {
    List<NAddableOverlay> overlays = [];
    int overlayIdCounter = 1;

    for (var routeSummary in routeSummaries) {
      List<NLatLng> points = routeSummary.path.map((point) {
        return NLatLng(point.latitude, point.longitude);
      }).toList();

      final polyline = NPolylineOverlay(
        id: 'polyline_$overlayIdCounter',
        color: Colors.blue,
        width: 4,
        coords: points,
      );
      overlays.add(polyline);
      overlayIdCounter++;
    }

    // 출발지 마커 추가
    final startMarker = NMarker(
      id: 'start_marker',
      position: NLatLng(startPoint.latitude, startPoint.longitude),
      caption: NOverlayCaption(text: '출발지'),
      iconTintColor: Colors.blue,

    );
    overlays.add(startMarker);

    // 도착지 마커 추가
    final endMarker = NMarker(
      id: 'end_marker',
      position: NLatLng(endPoint.latitude, endPoint.longitude),
      caption: NOverlayCaption(text: '도착지'),
      iconTintColor: Colors.red,
    );
    overlays.add(endMarker);

    return overlays;
  }

  Future<void> _moveCameraToRoute(WidgetRef ref, List<NAddableOverlay> overlays, StateProvider<NaverMapController?> controllerProvider) async {
    final controller = ref.read(controllerProvider.notifier).state;
    if (controller != null) {
      // 모든 오버레이에서 경계 계산
      final bounds = _calculateBoundsForOverlays(overlays);
      await controller.updateCamera(NCameraUpdate.fitBounds(bounds, padding: EdgeInsets.all(150)));
    }
  }

  NLatLngBounds _calculateBoundsForOverlays(List<NAddableOverlay> overlays) {
    double minLat = double.infinity;
    double maxLat = -double.infinity;
    double minLng = double.infinity;
    double maxLng = -double.infinity;

    for (var overlay in overlays) {
      if (overlay is NPolylineOverlay) {
        for (var point in overlay.coords) {
          if (point.latitude < minLat) minLat = point.latitude;
          if (point.latitude > maxLat) maxLat = point.latitude;
          if (point.longitude < minLng) minLng = point.longitude;
          if (point.longitude > maxLng) maxLng = point.longitude;
        }
      } else if (overlay is NMarker) {
        final position = overlay.position;
        if (position.latitude < minLat) minLat = position.latitude;
        if (position.latitude > maxLat) maxLat = position.latitude;
        if (position.longitude < minLng) minLng = position.longitude;
        if (position.longitude > maxLng) maxLng = position.longitude;
      }
    }

    return NLatLngBounds(
      southWest: NLatLng(minLat, minLng),
      northEast: NLatLng(maxLat, maxLng),
    );
  }
}
