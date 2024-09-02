// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_shorts_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentListImpl _$$CommentListImplFromJson(Map<String, dynamic> json) =>
    _$CommentListImpl(
      comment: (json['comment'] as List<dynamic>)
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CommentListImplToJson(_$CommentListImpl instance) =>
    <String, dynamic>{
      'comment': instance.comment,
    };

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      commentId: (json['commentId'] as num).toInt(),
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
      comment: json['comment'] as String,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'account': instance.account,
      'comment': instance.comment,
      'date': instance.date.toIso8601String(),
    };

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      id: (json['id'] as num).toInt(),
      nickname: json['nickname'] as String,
      photoUrl: json['photoUrl'] as String,
      accountRole: json['accountRole'] as String,
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nickname': instance.nickname,
      'photoUrl': instance.photoUrl,
      'accountRole': instance.accountRole,
    };
