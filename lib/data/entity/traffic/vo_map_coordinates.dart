
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_map_coordinates.g.dart';

part 'vo_map_coordinates.freezed.dart';





@freezed
class MapCoordinates with _$MapCoordinates {
  const factory MapCoordinates(
  {
    required double statX,
    required double statY,
    required double endX,
    required double endY,
}
      ) = _MapCoordinates;

  factory MapCoordinates.fromJson(Map<String, dynamic> json) =>
      _$MapCoordinatesFromJson(json);
}
