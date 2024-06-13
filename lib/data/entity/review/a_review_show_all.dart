import 'package:freezed_annotation/freezed_annotation.dart';

part 'a_review_show_all.freezed.dart';
part 'a_review_show_all.g.dart';

@freezed
class ReviewShowAll with _$ReviewShowAll {
  factory ReviewShowAll({
    int? contentId,
    required int contentTypeId,
    int? rating,
    required String content,
    List<String>? reviewPhotoURLList,
    String? blogURL,
    required Account account,
  }) = _ReviewShowAll;

  factory ReviewShowAll.fromJson(Map<String, dynamic> json) =>
      _$ReviewShowAllFromJson(json);
}

@freezed
class Account with _$Account {
  factory Account({
    int? id,
    required String nickname,
    String? photoUrl,
    String? accountRole,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
