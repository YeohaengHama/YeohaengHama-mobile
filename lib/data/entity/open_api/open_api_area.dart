import 'package:freezed_annotation/freezed_annotation.dart';


part 'open_api_area.freezed.dart';
part 'open_api_area.g.dart';


@freezed
class OpenApiArea with _$OpenApiArea {
  const factory OpenApiArea(
  {
    required String numOfRows,
  @Default('1') required String page,
    required String MobileOS,
    required String keyword,
    required String contentTypeId,
}
      ) = _OpenApiArea;

  factory OpenApiArea.fromJson(Map<String, dynamic> json) =>
      _$OpenApiAreaFromJson(json);
}
