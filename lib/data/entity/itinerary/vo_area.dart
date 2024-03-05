import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_area.freezed.dart';
part 'vo_area.g.dart';


@freezed
class Area with _$Area {
  const factory Area(
      final String numOfRows,
      final String page,
      final String keyword,
      final String contentTypeId,
      final String mobileOs
      ) = _Area;

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}