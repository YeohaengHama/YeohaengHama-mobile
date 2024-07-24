import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../entity/traffic/vo_map_coordinates.dart';

final mapCoordinatesProvider = StateNotifierProvider<MapCoordinatesNotifier, MapCoordinates>((ref) {
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
    state = state.copyWith(startTitle: startTitle, startX: startX, startY: startY);
  }

  // setEnd 메서드 정의
  void setEnd(String endTitle, double endX, double endY) {
    state = state.copyWith(endTitle: endTitle, endX: endX, endY: endY);
  }

  // swapStartAndEnd 메서드 정의
  void swapStartAndEnd() {
    state = state.copyWith(
      startTitle: state.endTitle,
      startX: state.endX,
      startY: state.endY,
      endTitle: state.startTitle,
      endX: state.startX,
      endY: state.startY,
    );
  }
}
