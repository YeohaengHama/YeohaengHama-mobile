import 'package:freezed_annotation/freezed_annotation.dart';
part 'vo_style_tag.freezed.dart';
@freezed
class StyleTag with _$StyleTag {
  const factory StyleTag(
      final String style,
      ) = _StyleTag;

}