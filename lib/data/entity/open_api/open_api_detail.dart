import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_api_detail.freezed.dart';
part 'open_api_detail.g.dart';

@freezed
class OpenApiDetail with _$OpenApiDetail {
  const factory OpenApiDetail({
      required String contentId,
      required String contentTypeId,
    @Default('1')String numOfRows,
    @Default('1') String page,
    @Default('IOS')required String mobileOS
  }
      ) = _OpenApiDetail;

  factory OpenApiDetail.fromJson(Map<String, dynamic> json) =>
      _$OpenApiDetailFromJson(json);
}
