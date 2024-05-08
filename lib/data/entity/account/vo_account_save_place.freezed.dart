// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_account_save_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountSavePlace _$AccountSavePlaceFromJson(Map<String, dynamic> json) {
  return _AccountSavePlace.fromJson(json);
}

/// @nodoc
mixin _$AccountSavePlace {
  int get id => throw _privateConstructorUsedError;
  String get placeNum => throw _privateConstructorUsedError;
  String get contentTypeID => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountSavePlaceCopyWith<AccountSavePlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSavePlaceCopyWith<$Res> {
  factory $AccountSavePlaceCopyWith(
          AccountSavePlace value, $Res Function(AccountSavePlace) then) =
      _$AccountSavePlaceCopyWithImpl<$Res, AccountSavePlace>;
  @useResult
  $Res call({int id, String placeNum, String contentTypeID, Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$AccountSavePlaceCopyWithImpl<$Res, $Val extends AccountSavePlace>
    implements $AccountSavePlaceCopyWith<$Res> {
  _$AccountSavePlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? placeNum = null,
    Object? contentTypeID = null,
    Object? account = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      placeNum: null == placeNum
          ? _value.placeNum
          : placeNum // ignore: cast_nullable_to_non_nullable
              as String,
      contentTypeID: null == contentTypeID
          ? _value.contentTypeID
          : contentTypeID // ignore: cast_nullable_to_non_nullable
              as String,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccountSavePlaceCopyWith<$Res>
    implements $AccountSavePlaceCopyWith<$Res> {
  factory _$$_AccountSavePlaceCopyWith(
          _$_AccountSavePlace value, $Res Function(_$_AccountSavePlace) then) =
      __$$_AccountSavePlaceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String placeNum, String contentTypeID, Account account});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$_AccountSavePlaceCopyWithImpl<$Res>
    extends _$AccountSavePlaceCopyWithImpl<$Res, _$_AccountSavePlace>
    implements _$$_AccountSavePlaceCopyWith<$Res> {
  __$$_AccountSavePlaceCopyWithImpl(
      _$_AccountSavePlace _value, $Res Function(_$_AccountSavePlace) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? placeNum = null,
    Object? contentTypeID = null,
    Object? account = null,
  }) {
    return _then(_$_AccountSavePlace(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == placeNum
          ? _value.placeNum
          : placeNum // ignore: cast_nullable_to_non_nullable
              as String,
      null == contentTypeID
          ? _value.contentTypeID
          : contentTypeID // ignore: cast_nullable_to_non_nullable
              as String,
      null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountSavePlace implements _AccountSavePlace {
  const _$_AccountSavePlace(
      this.id, this.placeNum, this.contentTypeID, this.account);

  factory _$_AccountSavePlace.fromJson(Map<String, dynamic> json) =>
      _$$_AccountSavePlaceFromJson(json);

  @override
  final int id;
  @override
  final String placeNum;
  @override
  final String contentTypeID;
  @override
  final Account account;

  @override
  String toString() {
    return 'AccountSavePlace(id: $id, placeNum: $placeNum, contentTypeID: $contentTypeID, account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountSavePlace &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.placeNum, placeNum) ||
                other.placeNum == placeNum) &&
            (identical(other.contentTypeID, contentTypeID) ||
                other.contentTypeID == contentTypeID) &&
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, placeNum, contentTypeID, account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountSavePlaceCopyWith<_$_AccountSavePlace> get copyWith =>
      __$$_AccountSavePlaceCopyWithImpl<_$_AccountSavePlace>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountSavePlaceToJson(
      this,
    );
  }
}

abstract class _AccountSavePlace implements AccountSavePlace {
  const factory _AccountSavePlace(final int id, final String placeNum,
      final String contentTypeID, final Account account) = _$_AccountSavePlace;

  factory _AccountSavePlace.fromJson(Map<String, dynamic> json) =
      _$_AccountSavePlace.fromJson;

  @override
  int get id;
  @override
  String get placeNum;
  @override
  String get contentTypeID;
  @override
  Account get account;
  @override
  @JsonKey(ignore: true)
  _$$_AccountSavePlaceCopyWith<_$_AccountSavePlace> get copyWith =>
      throw _privateConstructorUsedError;
}
