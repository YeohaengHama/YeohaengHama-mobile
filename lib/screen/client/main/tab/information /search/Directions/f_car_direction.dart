import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../../data/entity/traffic/vo_route_summary.dart';
import '../../../../../../../data/memory/traffic/info_car_traffic_provider.dart';
import '../../../schedule/traffic/w_public_transport_map.dart';

class CarDirectionFragment extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final carTrafficInfoAsync = ref.watch(infoCarTrafficProvider);
    final controllerProvider = StateProvider<NaverMapController?>((ref) => null);

    return Scaffold(
      body: carTrafficInfoAsync.when(
        data: (carTrafficInfo) {
          // 출발지와 도착지 좌표
          final startPoint = carTrafficInfo.trafast.first.path.first;
          final endPoint = carTrafficInfo.trafast.first.path.last;

          return FutureBuilder<List<NAddableOverlay>>(
            future: _createOverlaysAsync(carTrafficInfo.trafast),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                final overlays = snapshot.data ?? [];

                // 지도에 보여질 경로가 있는 경우 카메라를 해당 경로로 조정
                WidgetsBinding.instance?.addPostFrameCallback((_) {
                  if (overlays.isNotEmpty) {
                    _moveCameraToRoute(ref, overlays.first, controllerProvider);
                  }
                });

                return Column(
                  children: [
                    Expanded(
                      child: TransportMap(
                        overlays: overlays,
                        onMapReady: (controller) {
                          ref.read(controllerProvider.notifier).state = controller;
                        },
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: carTrafficInfo.trafast.length,
                        itemBuilder: (context, index) {
                          final routeSummary = carTrafficInfo.trafast[index];
                          return GestureDetector(
                            onTap: () {
                              // 선택한 경로에 대한 추가 작업을 수행할 수 있음
                            },
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Route ${index + 1}'),
                                    Text('Distance: ${routeSummary.distance}m'),
                                    Text('Duration: ${routeSummary.duration}mins'),
                                    Text('Taxi Fare: ${routeSummary.taxiFare}won'),
                                  ],
                                ),
                              ),
                            ),
                          );
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

  Future<List<NAddableOverlay>> _createOverlaysAsync(List<RouteSummary> routeSummaries) async {
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

    return overlays;
  }

  void _moveCameraToRoute(WidgetRef ref, NAddableOverlay overlay, StateProvider<NaverMapController?> controllerProvider) {
    final controller = ref.read(controllerProvider.notifier).state;
    if (controller != null) {
      // 경로의 시작점과 끝점으로 카메라를 조정
      final bounds = _calculateBoundsFromPolyline(overlay);
      controller.updateCamera(NCameraUpdate.fitBounds(bounds, padding: EdgeInsets.all(50)));
    }
  }

  NLatLngBounds _calculateBoundsFromPolyline(NAddableOverlay overlay) {
    List<NLatLng> points = (overlay as NPolylineOverlay).coords;
    double minLat = points.first.latitude;
    double maxLat = points.first.latitude;
    double minLng = points.first.longitude;
    double maxLng = points.first.longitude;

    for (var point in points) {
      if (point.latitude < minLat) minLat = point.latitude;
      if (point.latitude > maxLat) maxLat = point.latitude;
      if (point.longitude < minLng) minLng = point.longitude;
      if (point.longitude > maxLng) maxLng = point.longitude;
    }

    return NLatLngBounds(
      southWest: NLatLng(minLat, minLng),
      northEast: NLatLng(maxLat, maxLng),
    );
  }
}
