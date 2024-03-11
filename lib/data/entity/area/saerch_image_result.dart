import 'package:freezed_annotation/freezed_annotation.dart';

part 'saerch_image_result.freezed.dart';

@freezed
class SearchImageResult with _$SearchImageResult {
  const factory SearchImageResult(
  {
    List<String>? imagesUrl,
}
      ) = _SearchImageResult;

}
