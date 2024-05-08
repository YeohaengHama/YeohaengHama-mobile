import 'package:freezed_annotation/freezed_annotation.dart';
part 'vo_who_tag.freezed.dart';
@freezed
class WhoTag with _$WhoTag {
  const factory WhoTag(
      final String who,
      ) = _WhoTag;

}