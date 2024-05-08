import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_simple_restaurant_result.freezed.dart';

@freezed
class SearchSimpleRestaurantResult with _$SearchSimpleRestaurantResult {
  const factory SearchSimpleRestaurantResult({
    required String contentTypeId,
    required String contentId,
    required String title,
    required String addr1,
    required String addr2,
    required String firstimage,
  }) = _SearchSimpleRestaurantResult;
}
