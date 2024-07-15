import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../entity/traffic/vo_map_coordinates.dart';

final mapCoordinatesProvider =
StateNotifierProvider<MapCoordinatesNotifier, MapCoordinates>((ref) {
  return MapCoordinatesNotifier(MapCoordinates(

    startTitle: '',
    startX: 0.0,
    startY: 0.0,
    endTitle: '',
    endX: 0.0,
    endY: 0.0,
  ));
});

class MapCoordinatesNotifier extends StateNotifier<MapCoordinates> {
  MapCoordinatesNotifier(MapCoordinates state) : super(state);

  // setStart 메서드 정의
  void setStart(String startTitle, double startX, double startY) {
    state = state.setStart(startTitle, startX, startY);
  }

  // setEnd 메서드 정의
  void setEnd(String endTitle, double endX, double endY) {
    state = state.setEnd(endTitle, endX, endY);
  }

  void swapStartAndEnd() {
    state = state.swapStartAndEnd();
  }
}
