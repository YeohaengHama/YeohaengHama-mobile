import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_api_area_location.g.dart';

part 'open_api_area_location.freezed.dart';

@freezed
class OpenApiAreaLocation with _$OpenApiAreaLocation {
  const factory OpenApiAreaLocation(
      {
        @Default('100') String numOfRows,
        @Default('1')  String page,
        required String mapX,
        required String mapY,
        required int radius,
        required String contentTypeId,
        @Default('IOS') String mobileOS
      }
      ) = _OpenApiAreaLocation;

  factory OpenApiAreaLocation.fromJson(Map<String, dynamic> json) =>
      _$OpenApiAreaLocationFromJson(json);
}
