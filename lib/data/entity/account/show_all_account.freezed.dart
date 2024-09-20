// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_all_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShowAllAccount _$ShowAllAccountFromJson(Map<String, dynamic> json) {
  return _ShowAllAccount.fromJson(json);
}

/// @nodoc
mixin _$ShowAllAccount {
  int get id => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;

  /// Serializes this ShowAllAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShowAllAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShowAllAccountCopyWith<ShowAllAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowAllAccountCopyWith<$Res> {
  factory $ShowAllAccountCopyWith(
          ShowAllAccount value, $Res Function(ShowAllAccount) then) =
      _$ShowAllAccountCopyWithImpl<$Res, ShowAllAccount>;
  @useResult
  $Res call({int id, String? photoUrl, String nickname});
}

/// @nodoc
class _$ShowAllAccountCopyWithImpl<$Res, $Val extends ShowAllAccount>
    implements $ShowAllAccountCopyWith<$Res> {
  _$ShowAllAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShowAllAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photoUrl = freezed,
    Object? nickname = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowAllAccountImplCopyWith<$Res>
    implements $ShowAllAccountCopyWith<$Res> {
  factory _$$ShowAllAccountImplCopyWith(_$ShowAllAccountImpl value,
          $Res Function(_$ShowAllAccountImpl) then) =
      __$$ShowAllAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? photoUrl, String nickname});
}

/// @nodoc
class __$$ShowAllAccountImplCopyWithImpl<$Res>
    extends _$ShowAllAccountCopyWithImpl<$Res, _$ShowAllAccountImpl>
    implements _$$ShowAllAccountImplCopyWith<$Res> {
  __$$ShowAllAccountImplCopyWithImpl(
      _$ShowAllAccountImpl _value, $Res Function(_$ShowAllAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShowAllAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? photoUrl = freezed,
    Object? nickname = null,
  }) {
    return _then(_$ShowAllAccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowAllAccountImpl implements _ShowAllAccount {
  const _$ShowAllAccountImpl(
      {required this.id, required this.photoUrl, required this.nickname});

  factory _$ShowAllAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowAllAccountImplFromJson(json);

  @override
  final int id;
  @override
  final String? photoUrl;
  @override
  final String nickname;

  @override
  String toString() {
    return 'ShowAllAccount(id: $id, photoUrl: $photoUrl, nickname: $nickname)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowAllAccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, photoUrl, nickname);

  /// Create a copy of ShowAllAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowAllAccountImplCopyWith<_$ShowAllAccountImpl> get copyWith =>
      __$$ShowAllAccountImplCopyWithImpl<_$ShowAllAccountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowAllAccountImplToJson(
      this,
    );
  }
}

abstract class _ShowAllAccount implements ShowAllAccount {
  const factory _ShowAllAccount(
      {required final int id,
      required final String? photoUrl,
      required final String nickname}) = _$ShowAllAccountImpl;

  factory _ShowAllAccount.fromJson(Map<String, dynamic> json) =
      _$ShowAllAccountImpl.fromJson;

  @override
  int get id;
  @override
  String? get photoUrl;
  @override
  String get nickname;

  /// Create a copy of ShowAllAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShowAllAccountImplCopyWith<_$ShowAllAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
