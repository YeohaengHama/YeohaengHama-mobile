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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CurrentAccount {
  String get id => throw _privateConstructorUsedError;
  String get nickName => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$_CurrentAccountCopyWith<$Res>
    implements $CurrentAccountCopyWith<$Res> {
  factory _$$_CurrentAccountCopyWith(
          _$_CurrentAccount value, $Res Function(_$_CurrentAccount) then) =
      __$$_CurrentAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String nickName, String? photoUrl});
}

/// @nodoc
class __$$_CurrentAccountCopyWithImpl<$Res>
    extends _$CurrentAccountCopyWithImpl<$Res, _$_CurrentAccount>
    implements _$$_CurrentAccountCopyWith<$Res> {
  __$$_CurrentAccountCopyWithImpl(
      _$_CurrentAccount _value, $Res Function(_$_CurrentAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickName = null,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_CurrentAccount(
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

class _$_CurrentAccount implements _CurrentAccount {
  const _$_CurrentAccount(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentAccount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, nickName, photoUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentAccountCopyWith<_$_CurrentAccount> get copyWith =>
      __$$_CurrentAccountCopyWithImpl<_$_CurrentAccount>(this, _$identity);
}

abstract class _CurrentAccount implements CurrentAccount {
  const factory _CurrentAccount(
      {required final String id,
      required final String nickName,
      final String? photoUrl}) = _$_CurrentAccount;

  @override
  String get id;
  @override
  String get nickName;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentAccountCopyWith<_$_CurrentAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
