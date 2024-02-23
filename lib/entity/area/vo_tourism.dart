import 'package:fast_app_base/entity/area/vo_review.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'vo_tourism.freezed.dart';

@freezed
class Tourism with _$Tourism {
  const factory Tourism(
      final int id,
      final String tourismName,
      final String tourismArea,
      final List<String> tourismImages,
      final String content,
      ) = _Tourism;

}