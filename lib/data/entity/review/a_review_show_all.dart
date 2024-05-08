import 'package:freezed_annotation/freezed_annotation.dart';

part 'a_review_show_all.freezed.dart';
part 'a_review_show_all.g.dart';

@freezed
class ReviewShowAll with _$ReviewShowAll {
  factory ReviewShowAll({
    required int contentId,
    required int contentTypeId,
    required int rating,
    required String content,
    required List<String> reviewPhotoURLList,
    required Account account,
  }) = _ReviewShowAll;

  factory ReviewShowAll.fromJson(Map<String, dynamic> json) =>
      _$ReviewShowAllFromJson(json);
}

@freezed
class Account with _$Account {
  factory Account({
    required int id,
    required String nickname,
    String? photoUrl,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
