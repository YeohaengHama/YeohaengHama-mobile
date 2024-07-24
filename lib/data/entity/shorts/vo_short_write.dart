import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_short_write.freezed.dart';

@freezed
class ShortsWrite with _$ShortsWrite {
  const factory ShortsWrite(
  {
    required int accountId,
    required String video,
    required String title,
    required String content,
    required int itineraryId,
    required String itineraryTitle,
}
      ) = _ShortsWrite;


}
