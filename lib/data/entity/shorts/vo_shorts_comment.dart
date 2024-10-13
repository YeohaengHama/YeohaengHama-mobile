import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_shorts_comment.freezed.dart';
part 'vo_shorts_comment.g.dart';


@freezed
class CommentList with _$CommentList {
  const factory CommentList({
    required List<Comment> comment,
  }) = _CommentList;

  factory CommentList.fromJson(Map<String, dynamic> json) => _$CommentListFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    required int commentId,
    required Account account,
    required String comment,
    required DateTime date,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
}

@freezed
class Account with _$Account {
  const factory Account({
    required int id,
    required String nickname,
    required String? photoUrl,
    required String accountRole,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
}
