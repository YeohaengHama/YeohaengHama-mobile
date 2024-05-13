import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_review_show_account_.freezed.dart';
part 'vo_review_show_account_.g.dart';


@freezed
class ReviewShowAccount with _$ReviewShowAccount {
  const factory ReviewShowAccount(
  {
    required int reviewId,
    required String placeName,
    required double rating,
    required String content,
    required String date,
    required List<String> reviewPhotoURLList,

}
      ) = _ReviewShowAccount;

  factory ReviewShowAccount.fromJson(Map<String, dynamic> json) =>
      _$ReviewShowAccountFromJson(json);
}
