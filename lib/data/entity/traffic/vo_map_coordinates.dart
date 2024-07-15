
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_map_coordinates.g.dart';

part 'vo_map_coordinates.freezed.dart';





@freezed
class MapCoordinates with _$MapCoordinates {
  const factory MapCoordinates(
  {
    required String startTitle,
    required double startX,
    required double startY,
    required String endTitle,
    required double endX,
    required double endY,
}
      ) = _MapCoordinates;

  factory MapCoordinates.fromJson(Map<String, dynamic> json) =>
      _$MapCoordinatesFromJson(json);

  MapCoordinates setStart(String startTitle, double startX, double startY) {
    return copyWith(startTitle: startTitle, startX: startX, startY: startY);
  }

  // setEnd 메서드 추가
  MapCoordinates setEnd(String endTitle, double endX, double endY) {
    return copyWith(endTitle: endTitle, endX: endX, endY: endY);
  }
  MapCoordinates swapStartAndEnd() {
    return copyWith(
      startTitle: endTitle,
      startX: endX,
      startY: endY,
      endTitle: startTitle,
      endX: startX,
      endY: startY,
    );
  }
}
