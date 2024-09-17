// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatMessage<T> {
  String get text => throw _privateConstructorUsedError;
  bool get isUser => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError; // Message type
  T? get result => throw _privateConstructorUsedError; // Generic result
  List<Other>? get other => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatMessageCopyWith<T, ChatMessage<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<T, $Res> {
  factory $ChatMessageCopyWith(
          ChatMessage<T> value, $Res Function(ChatMessage<T>) then) =
      _$ChatMessageCopyWithImpl<T, $Res, ChatMessage<T>>;
  @useResult
  $Res call(
      {String text, bool isUser, String type, T? result, List<Other>? other});
}

/// @nodoc
class _$ChatMessageCopyWithImpl<T, $Res, $Val extends ChatMessage<T>>
    implements $ChatMessageCopyWith<T, $Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isUser = null,
    Object? type = null,
    Object? result = freezed,
    Object? other = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isUser: null == isUser
          ? _value.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as List<Other>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<T, $Res>
    implements $ChatMessageCopyWith<T, $Res> {
  factory _$$ChatMessageImplCopyWith(_$ChatMessageImpl<T> value,
          $Res Function(_$ChatMessageImpl<T>) then) =
      __$$ChatMessageImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String text, bool isUser, String type, T? result, List<Other>? other});
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<T, $Res>
    extends _$ChatMessageCopyWithImpl<T, $Res, _$ChatMessageImpl<T>>
    implements _$$ChatMessageImplCopyWith<T, $Res> {
  __$$ChatMessageImplCopyWithImpl(
      _$ChatMessageImpl<T> _value, $Res Function(_$ChatMessageImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isUser = null,
    Object? type = null,
    Object? result = freezed,
    Object? other = freezed,
  }) {
    return _then(_$ChatMessageImpl<T>(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isUser: null == isUser
          ? _value.isUser
          : isUser // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      other: freezed == other
          ? _value._other
          : other // ignore: cast_nullable_to_non_nullable
              as List<Other>?,
    ));
  }
}

/// @nodoc

class _$ChatMessageImpl<T> implements _ChatMessage<T> {
  const _$ChatMessageImpl(
      {required this.text,
      required this.isUser,
      required this.type,
      required this.result,
      required final List<Other>? other})
      : _other = other;

  @override
  final String text;
  @override
  final bool isUser;
  @override
  final String type;
// Message type
  @override
  final T? result;
// Generic result
  final List<Other>? _other;
// Generic result
  @override
  List<Other>? get other {
    final value = _other;
    if (value == null) return null;
    if (_other is EqualUnmodifiableListView) return _other;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatMessage<$T>(text: $text, isUser: $isUser, type: $type, result: $result, other: $other)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl<T> &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isUser, isUser) || other.isUser == isUser) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other._other, this._other));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      text,
      isUser,
      type,
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(_other));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<T, _$ChatMessageImpl<T>> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<T, _$ChatMessageImpl<T>>(
          this, _$identity);
}

abstract class _ChatMessage<T> implements ChatMessage<T> {
  const factory _ChatMessage(
      {required final String text,
      required final bool isUser,
      required final String type,
      required final T? result,
      required final List<Other>? other}) = _$ChatMessageImpl<T>;

  @override
  String get text;
  @override
  bool get isUser;
  @override
  String get type;
  @override // Message type
  T? get result;
  @override // Generic result
  List<Other>? get other;
  @override
  @JsonKey(ignore: true)
  _$$ChatMessageImplCopyWith<T, _$ChatMessageImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
