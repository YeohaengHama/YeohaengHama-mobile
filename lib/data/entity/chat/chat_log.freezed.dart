// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatLog _$ChatLogFromJson(Map<String, dynamic> json) {
  return _ChatLog.fromJson(json);
}

/// @nodoc
mixin _$ChatLog {
  String get roomId => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

  /// Serializes this ChatLog to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatLogCopyWith<ChatLog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatLogCopyWith<$Res> {
  factory $ChatLogCopyWith(ChatLog value, $Res Function(ChatLog) then) =
      _$ChatLogCopyWithImpl<$Res, ChatLog>;
  @useResult
  $Res call({String roomId, List<Message> messages});
}

/// @nodoc
class _$ChatLogCopyWithImpl<$Res, $Val extends ChatLog>
    implements $ChatLogCopyWith<$Res> {
  _$ChatLogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatLogImplCopyWith<$Res> implements $ChatLogCopyWith<$Res> {
  factory _$$ChatLogImplCopyWith(
          _$ChatLogImpl value, $Res Function(_$ChatLogImpl) then) =
      __$$ChatLogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String roomId, List<Message> messages});
}

/// @nodoc
class __$$ChatLogImplCopyWithImpl<$Res>
    extends _$ChatLogCopyWithImpl<$Res, _$ChatLogImpl>
    implements _$$ChatLogImplCopyWith<$Res> {
  __$$ChatLogImplCopyWithImpl(
      _$ChatLogImpl _value, $Res Function(_$ChatLogImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatLog
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? messages = null,
  }) {
    return _then(_$ChatLogImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatLogImpl implements _ChatLog {
  _$ChatLogImpl({required this.roomId, required final List<Message> messages})
      : _messages = messages;

  factory _$ChatLogImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatLogImplFromJson(json);

  @override
  final String roomId;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatLog(roomId: $roomId, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatLogImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, roomId, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatLog
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatLogImplCopyWith<_$ChatLogImpl> get copyWith =>
      __$$ChatLogImplCopyWithImpl<_$ChatLogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatLogImplToJson(
      this,
    );
  }
}

abstract class _ChatLog implements ChatLog {
  factory _ChatLog(
      {required final String roomId,
      required final List<Message> messages}) = _$ChatLogImpl;

  factory _ChatLog.fromJson(Map<String, dynamic> json) = _$ChatLogImpl.fromJson;

  @override
  String get roomId;
  @override
  List<Message> get messages;

  /// Create a copy of ChatLog
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatLogImplCopyWith<_$ChatLogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
