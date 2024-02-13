import 'package:freezed_annotation/freezed_annotation.dart';
part 'vo_tourism.freezed.dart';

@freezed
class Tourism with _$Tourism {
  const factory Tourism(
      final String tourismName,
      final String tourismArea,
      final List<String> tourismImages,
      ) = _Tourism;

}