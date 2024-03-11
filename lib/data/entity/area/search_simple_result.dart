import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_simple_result.freezed.dart';
part 'search_simple_result.g.dart';

@freezed
class SearchSimpleResult with _$SearchSimpleResult {
  const factory SearchSimpleResult(
      {required String contentTypeId,
        required String contentId,
        required String title,
        required String addr1,
        required String addr2,
        required String firstimage,}
      ) = _SearchSimpleResult;

  factory SearchSimpleResult.fromJson(Map<String, dynamic> json) =>
      _$SearchSimpleResultFromJson(json);
}