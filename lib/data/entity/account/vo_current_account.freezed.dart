// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_current_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentAccount {
  String get id => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  /// Create a copy of CurrentAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentAccountCopyWith<CurrentAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentAccountCopyWith<$Res> {
  factory $CurrentAccountCopyWith(
          CurrentAccount value, $Res Function(CurrentAccount) then) =
      _$CurrentAccountCopyWithImpl<$Res, CurrentAccount>;
  @useResult
  $Res call({String id, String nickName, String? photoUrl});
}

/// @nodoc
class _$CurrentAccountCopyWithImpl<$Res, $Val extends CurrentAccount>
    implements $CurrentAccountCopyWith<$Res> {
  _$CurrentAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickName = null,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentAccountImplCopyWith<$Res>
    implements $CurrentAccountCopyWith<$Res> {
  factory _$$CurrentAccountImplCopyWith(_$CurrentAccountImpl value,
          $Res Function(_$CurrentAccountImpl) then) =
      __$$CurrentAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String nickName, String? photoUrl});
}

/// @nodoc
class __$$CurrentAccountImplCopyWithImpl<$Res>
    extends _$CurrentAccountCopyWithImpl<$Res, _$CurrentAccountImpl>
    implements _$$CurrentAccountImplCopyWith<$Res> {
  __$$CurrentAccountImplCopyWithImpl(
      _$CurrentAccountImpl _value, $Res Function(_$CurrentAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickName = null,
    Object? photoUrl = freezed,
  }) {
    return _then(_$CurrentAccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CurrentAccountImpl implements _CurrentAccount {
  const _$CurrentAccountImpl(
      {required this.id, required this.nickName, this.photoUrl});

  @override
  final String id;
  @override
  final String nickName;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'CurrentAccount(id: $id, nickName: $nickName, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentAccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, nickName, photoUrl);

  /// Create a copy of CurrentAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentAccountImplCopyWith<_$CurrentAccountImpl> get copyWith =>
      __$$CurrentAccountImplCopyWithImpl<_$CurrentAccountImpl>(
          this, _$identity);
}

abstract class _CurrentAccount implements CurrentAccount {
  const factory _CurrentAccount(
      {required final String id,
      required final String nickName,
      final String? photoUrl}) = _$CurrentAccountImpl;

  @override
  String get id;
  @override
  String get nickName;
  @override
  String? get photoUrl;

  /// Create a copy of CurrentAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentAccountImplCopyWith<_$CurrentAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
