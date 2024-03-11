import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_simple_toursim_result.freezed.dart';

@freezed
class SearchSimpleTourismResult with _$SearchSimpleTourismResult {
  const factory SearchSimpleTourismResult(
      {required String contentTypeId,
        required String contentId,
        required String title,
        required String addr1,
        required String addr2,
        required String firstimage,}
      ) = _SearchSimpleTourismResult;
  
}