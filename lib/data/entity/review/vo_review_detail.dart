import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_review_detail.freezed.dart';
part 'vo_review_detail.g.dart';


@freezed
class ReviewDetail with _$ReviewDetail {
  factory ReviewDetail({
    required int contentId,
    required int contentTypeId,
    required int rating,
    required String content,
    required List<String> reviewPhotoURLList,
    
  }) = _ReviewDetail;

  factory ReviewDetail.fromJson(Map<String, dynamic> json) =>
      _$ReviewDetailFromJson(json);
}