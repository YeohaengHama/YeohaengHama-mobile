import 'package:freezed_annotation/freezed_annotation.dart';
part 'open_api_image.g.dart';

part 'open_api_image.freezed.dart';

@freezed
class OpenApiImage with _$OpenApiImage {
  const factory OpenApiImage({
      required String contentId,
      required String numOfRows,
      required String pageNo ,
      required String mobileOS}
      ) = _OpenApiImage;

  factory OpenApiImage.fromJson(Map<String, dynamic> json) =>
      _$OpenApiImageFromJson(json);
}
