import 'package:fast_app_base/entity/area/vo_tourism.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'vo_tourism_detail.freezed.dart';
@freezed
class TourismDetail with _$TourismDetail {
  const factory TourismDetail({
    required Tourism tourism,
    required String content
}) = _TourismDetail;

}
