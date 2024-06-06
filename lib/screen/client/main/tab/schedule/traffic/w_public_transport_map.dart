import 'package:fast_app_base/screen/client/main/tab/schedule/traffic/selected_transportation_index_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TransportMap extends ConsumerStatefulWidget {
  final List<NAddableOverlay> overlays;
  final Function(NaverMapController) onMapReady;

  TransportMap({required this.overlays, required this.onMapReady});

  @override
  _NaverMapWidgetState createState() => _NaverMapWidgetState();
}

class _NaverMapWidgetState extends ConsumerState<TransportMap> {
  NaverMapController? _controller;
  bool _isControllerInitialized = false;

  @override
  Widget build(BuildContext context) {
    final selectedTrasportaionNum = ref.watch(selectedTrafficRouteIndexNotifierProvider);

    return NaverMap(
      onMapReady: (controller) {
        _controller = controller;
        _isControllerInitialized = true;
        widget.onMapReady(controller);
        if (widget.overlays.isNotEmpty) {
          for (var overlay in widget.overlays) {
            _controller?.addOverlay(overlay);
          }
        }
      },
      forceGesture: true,
      options: const NaverMapViewOptions(
        mapType: NMapType.basic,
        activeLayerGroups: [
          NLayerGroup.building,
          NLayerGroup.transit,
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(TransportMap oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_isControllerInitialized && widget.overlays.isNotEmpty) {
      for (var overlay in widget.overlays) {
        _controller?.addOverlay(overlay);
      }
    }
  }
}
