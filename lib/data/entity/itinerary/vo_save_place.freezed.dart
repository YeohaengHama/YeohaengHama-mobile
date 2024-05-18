// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_save_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SavePlace _$SavePlaceFromJson(Map<String, dynamic> json) {
  return _SavePlace.fromJson(json);
}

/// @nodoc
mixin _$SavePlace {
  int get accountId => throw _privateConstructorUsedError;
  String get placeNum => throw _privateConstructorUsedError;
  String get contentTypeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavePlaceCopyWith<SavePlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavePlaceCopyWith<$Res> {
  factory $SavePlaceCopyWith(SavePlace value, $Res Function(SavePlace) then) =
      _$SavePlaceCopyWithImpl<$Res, SavePlace>;
  @useResult
  $Res call({int accountId, String placeNum, String contentTypeId});
}

/// @nodoc
class _$SavePlaceCopyWithImpl<$Res, $Val extends SavePlace>
    implements $SavePlaceCopyWith<$Res> {
  _$SavePlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? placeNum = null,
    Object? contentTypeId = null,
  }) {
    return _then(_value.copyWith(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      placeNum: null == placeNum
          ? _value.placeNum
          : placeNum // ignore: cast_nullable_to_non_nullable
              as String,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavePlaceImplCopyWith<$Res>
    implements $SavePlaceCopyWith<$Res> {
  factory _$$SavePlaceImplCopyWith(
          _$SavePlaceImpl value, $Res Function(_$SavePlaceImpl) then) =
      __$$SavePlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int accountId, String placeNum, String contentTypeId});
}

/// @nodoc
class __$$SavePlaceImplCopyWithImpl<$Res>
    extends _$SavePlaceCopyWithImpl<$Res, _$SavePlaceImpl>
    implements _$$SavePlaceImplCopyWith<$Res> {
  __$$SavePlaceImplCopyWithImpl(
      _$SavePlaceImpl _value, $Res Function(_$SavePlaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? placeNum = null,
    Object? contentTypeId = null,
  }) {
    return _then(_$SavePlaceImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      placeNum: null == placeNum
          ? _value.placeNum
          : placeNum // ignore: cast_nullable_to_non_nullable
              as String,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavePlaceImpl implements _SavePlace {
  const _$SavePlaceImpl(
      {required this.accountId,
      required this.placeNum,
      required this.contentTypeId});

  factory _$SavePlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SavePlaceImplFromJson(json);

  @override
  final int accountId;
  @override
  final String placeNum;
  @override
  final String contentTypeId;

  @override
  String toString() {
    return 'SavePlace(accountId: $accountId, placeNum: $placeNum, contentTypeId: $contentTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePlaceImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.placeNum, placeNum) ||
                other.placeNum == placeNum) &&
            (identical(other.contentTypeId, contentTypeId) ||
                other.contentTypeId == contentTypeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accountId, placeNum, contentTypeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePlaceImplCopyWith<_$SavePlaceImpl> get copyWith =>
      __$$SavePlaceImplCopyWithImpl<_$SavePlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavePlaceImplToJson(
      this,
    );
  }
}

abstract class _SavePlace implements SavePlace {
  const factory _SavePlace(
      {required final int accountId,
      required final String placeNum,
      required final String contentTypeId}) = _$SavePlaceImpl;

  factory _SavePlace.fromJson(Map<String, dynamic> json) =
      _$SavePlaceImpl.fromJson;

  @override
  int get accountId;
  @override
  String get placeNum;
  @override
  String get contentTypeId;
  @override
  @JsonKey(ignore: true)
  _$$SavePlaceImplCopyWith<_$SavePlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
