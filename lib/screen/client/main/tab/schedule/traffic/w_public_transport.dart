import 'package:fast_app_base/screen/client/main/tab/schedule/traffic/selected_transportation_index_provider.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/traffic/w_TransportationDropdown.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/traffic/w_public_transport_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../common/common.dart';
import '../../../../../../data/entity/traffic/vo_transport.dart';
import '../../../../../../data/memory/traffic/transport_provider.dart';

class PublicTransportWidget extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final trafficInfoAsync = ref.watch(trafficInfoProvider);
    final selectedPathIndexNoti = ref.watch(selectedTrafficRouteIndexNotifierProvider);
    final selectedPathIndex = ref.read(selectedTrafficRouteIndexNotifierProvider.notifier).state;
    final controllerProvider = StateProvider<NaverMapController?>((ref) => null);



    return Scaffold(
      body: trafficInfoAsync.when(
        data: (trafficInfo) {
          return FutureBuilder<List<NAddableOverlay>>(
            future: _createOverlaysAsync(trafficInfo.result.path[selectedPathIndex]),
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
                        onMapReady: (controller) {
                          ref.read(controllerProvider.notifier).state = controller;
                          if (overlays.isNotEmpty) {
                            _moveCameraToOverlays(controller, overlays);
                            for (var overlay in overlays) {
                              controller.addOverlay(overlay);
                            }
                          }
                        },
                      ),
                    ),

                    Expanded(
                      child: ListView.builder(
                        itemCount: trafficInfo.result.path.length,
                        itemBuilder: (context, index) {
                          final path = trafficInfo.result.path[index];
                          final totalTime = path.info.totalTime;
                          bool firstWalkIconShown = false;
                          return Tap(
                            onTap: () {
                              ref.read(selectedTrafficRouteIndexNotifierProvider.notifier).setSelectedTrafficRouteIndex(index);

                            },
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Baseline(
                                          baseline: TextStyle(fontSize: 15).fontSize! * 0.8, // 폰트 크기에 따라 기준선을 설정
                                          baselineType: TextBaseline.alphabetic,
                                          child: Container(
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: AppColors.deepPurple,
                                            ),
                                            child: Text(
                                              '${index + 1}',
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 8), // 아이템 간의 간격을 조절
                                        Baseline(
                                          baseline: TextStyle(fontSize: 30).fontSize! * 0.8, // 폰트 크기에 따라 기준선을 설정
                                          baselineType: TextBaseline.alphabetic,
                                          child: '${totalTime}'.text.bold.color(AppColors.primaryGrey).size(30).make(),
                                        ),
                                        Baseline(
                                          baseline: TextStyle(fontSize: 15).fontSize! * 0.8,
                                          baselineType: TextBaseline.alphabetic,
                                          child: '분'.text.bold.color(AppColors.primaryGrey).size(15).make(),
                                        ),
                                        Baseline(
                                          baseline: TextStyle(fontSize: 15).fontSize! * 0.8,
                                          baselineType: TextBaseline.alphabetic,
                                          child: '|'.text.color(AppColors.outline).bold.make(),
                                        ),
                                        Baseline(
                                          baseline: TextStyle(fontSize: 15).fontSize! * 0.8,
                                          baselineType: TextBaseline.alphabetic,
                                          child: ' ${path.info.payment}원'.text.bold.color(AppColors.primaryGrey).make(),
                                        ),
                                      ],
                                    ),


                                    SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.forthGrey,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: path.subPath!.map((subPath) {
                                          final proportion = subPath.sectionTime! / totalTime;
                                          final isWalk = subPath.trafficType == 3;
                                          Widget icon = _getIcon(subPath.trafficType);
                                          Widget text = Text(
                                            '${subPath.sectionTime}분',
                                            style: TextStyle(color: Colors.white, fontWeight:FontWeight.bold, fontSize: 10),
                                          );

                                          if (isWalk && firstWalkIconShown) {
                                            icon = Container();
                                          } else if (isWalk) {
                                            firstWalkIconShown = true;
                                          }

                                          return Expanded(
                                            flex: (proportion * 100).round(),
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                    color: subPath.sectionTime! >= 4
                                                        ? _getColor(subPath.trafficType)
                                                        : AppColors.forthGrey,
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  child: subPath.sectionTime! >= 5
                                                      ? Stack(
                                                    children: [
                                                      Center(child: text),
                                                      Positioned(
                                                        left: 5,
                                                        top: 2,
                                                        child: icon,
                                                      ),
                                                    ],
                                                  )
                                                      : Center(
                                                    child: subPath.trafficType != 5
                                                        ? icon
                                                        : Container(),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Row(
                                      children: path.subPath!.map((subPath) {
                                        final proportion = subPath.sectionTime! / totalTime;
                                        return Expanded(
                                          flex: (proportion * 100).round(),
                                          child: Center(
                                            child: Text(
                                              subPath.sectionTime! >= 4
                                                  ? _getSubPathLabel(subPath)
                                                  : '',
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                    Divider(thickness: 2),
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
        loading: () =>Container(),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
  Future<List<NAddableOverlay>> _createOverlaysAsync(Path path) async {
    List<NAddableOverlay> overlays = [];
    int overlayIdCounter = 1;

    // 출발지 좌표를 유효한 값으로 찾기
    NLatLng? startLatLng;
    for (var subPath in path.subPath!) {
      if (subPath.startX != null && subPath.startY != null) {
        startLatLng = NLatLng(subPath.startY!, subPath.startX!);
        break; // 유효한 좌표를 찾으면 루프 종료
      }
    }

    // 출발지 마커 추가 (유효한 좌표가 있을 때만)
    if (startLatLng != null) {
      final startMarker = NMarker(
        id: 'start_marker',
        position: startLatLng,
        caption:NOverlayCaption(text: '출발지'),

        iconTintColor: Colors.red,
      );
      overlays.add(startMarker);
    }

    // 도착지 좌표를 유효한 값으로 찾기
    NLatLng? endLatLng;
    for (var i = path.subPath!.length - 1; i >= 0; i--) {
      final subPath = path.subPath![i];
      if (subPath.endX != null && subPath.endY != null) {
        endLatLng = NLatLng(subPath.endY!, subPath.endX!);
        break; // 유효한 좌표를 찾으면 루프 종료
      }
    }

    // 도착지 마커 추가 (유효한 좌표가 있을 때만)
    if (endLatLng != null) {
      final endMarker = NMarker(
        id: 'end_marker',
        position: endLatLng,
        caption: NOverlayCaption(text: '도착지'),
        iconTintColor: Colors.blue,
      );
      overlays.add(endMarker);
    }

    for (var subPath in path.subPath!) {
      List<NLatLng> points = [];

      if (subPath.trafficType == 1) {
        points = subPath.passStopList!.stations.map((station) {
          return NLatLng(double.parse(station.y!), double.parse(station.x!));
        }).toList();
      } else if (subPath.trafficType == 2) {
        points = [NLatLng(subPath.startY!, subPath.startX!), NLatLng(subPath.endY!, subPath.endX!)];
      } else {
        continue; // trafficType이 1과 2가 아닌 경우 다음 subPath로 넘어갑니다.
      }

      final polyline = NPolylineOverlay(
        id: 'polyline_$overlayIdCounter',
        color: _getColor(subPath.trafficType),
        width: 4,
        coords: points,
      );
      overlays.add(polyline);
      overlayIdCounter++;
    }

    return overlays;
  }
  void _moveCameraToOverlays(NaverMapController? controller, List<NAddableOverlay> overlays) {
    if (overlays.isEmpty || controller == null) return;

    final bounds = _calculateLatLngBounds(overlays);
    controller.updateCamera(
      NCameraUpdate.fitBounds(bounds, padding: const EdgeInsets.all(180)),
    );
  }
  NLatLngBounds _calculateLatLngBounds(List<NAddableOverlay> overlays) {
    double? minLat, maxLat, minLng, maxLng;

    for (var overlay in overlays) {
      if (overlay is NPolylineOverlay) {
        for (var point in overlay.coords) {
          if (minLat == null || point.latitude < minLat) minLat = point.latitude;
          if (maxLat == null || point.latitude > maxLat) maxLat = point.latitude;
          if (minLng == null || point.longitude < minLng) minLng = point.longitude;
          if (maxLng == null || point.longitude > maxLng) maxLng = point.longitude;
        }
      }
    }

    return NLatLngBounds(
      southWest: NLatLng(minLat!, minLng!),
      northEast: NLatLng(maxLat!, maxLng!),
    );
  }

  Color _getColor(int trafficType) {
    switch (trafficType) {
      case 1:
        return Colors.blue;
      case 2:
        return Colors.green;
      case 3:
        return AppColors.forthGrey;
      default:
        return Colors.grey;
    }
  }

  Widget _getIcon(int trafficType) {
    switch (trafficType) {
      case 1:
        return Icon(Icons.directions_subway, size: 16, color: Colors.white);
      case 2:
        return Icon(Icons.directions_bus, size: 16, color: Colors.white);
      case 3:
        return Icon(Icons.directions_walk, size: 16, color: Colors.white);
      default:
        return Container();
    }
  }

  String _getSubPathLabel(SubPath subPath) {
    switch (subPath.trafficType) {
      case 1:
        return '${subPath.lane?.first.subwayCode}호선';
      case 2:
        return '${subPath.lane?.first.busNo}';
      case 3:
        return '';
      default:
        return '알 수 없음';
    }
  }
}
