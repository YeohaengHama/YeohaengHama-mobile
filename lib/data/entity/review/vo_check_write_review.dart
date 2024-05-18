import 'package:freezed_annotation/freezed_annotation.dart';
part 'vo_check_write_review.g.dart';

part 'vo_check_write_review.freezed.dart';

@freezed
class CheckWriteReview with _$CheckWriteReview {
  const factory CheckWriteReview(
  {
    required String placeNum,
    required String contentTypeId,
}
      ) = _CheckWriteReview;

  factory CheckWriteReview.fromJson(Map<String, dynamic> json) =>
      _$CheckWriteReviewFromJson(json);
}
