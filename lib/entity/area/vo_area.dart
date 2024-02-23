
import 'package:freezed_annotation/freezed_annotation.dart';
part 'vo_area.freezed.dart';
@freezed
class HamaArea with _$HamaArea {
  const factory HamaArea({
      required final String area,
      required final String areaImages,
  }) = _HamaArea;
}