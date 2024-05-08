// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'a_check_save_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckSavePlace _$CheckSavePlaceFromJson(Map<String, dynamic> json) {
  return _CheckSavePlace.fromJson(json);
}

/// @nodoc
mixin _$CheckSavePlace {
  String get placeNum => throw _privateConstructorUsedError;
  String get contentTypeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckSavePlaceCopyWith<CheckSavePlace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSavePlaceCopyWith<$Res> {
  factory $CheckSavePlaceCopyWith(
          CheckSavePlace value, $Res Function(CheckSavePlace) then) =
      _$CheckSavePlaceCopyWithImpl<$Res, CheckSavePlace>;
  @useResult
  $Res call({String placeNum, String contentTypeId});
}

/// @nodoc
class _$CheckSavePlaceCopyWithImpl<$Res, $Val extends CheckSavePlace>
    implements $CheckSavePlaceCopyWith<$Res> {
  _$CheckSavePlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeNum = null,
    Object? contentTypeId = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_CheckSavePlaceCopyWith<$Res>
    implements $CheckSavePlaceCopyWith<$Res> {
  factory _$$_CheckSavePlaceCopyWith(
          _$_CheckSavePlace value, $Res Function(_$_CheckSavePlace) then) =
      __$$_CheckSavePlaceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String placeNum, String contentTypeId});
}

/// @nodoc
class __$$_CheckSavePlaceCopyWithImpl<$Res>
    extends _$CheckSavePlaceCopyWithImpl<$Res, _$_CheckSavePlace>
    implements _$$_CheckSavePlaceCopyWith<$Res> {
  __$$_CheckSavePlaceCopyWithImpl(
      _$_CheckSavePlace _value, $Res Function(_$_CheckSavePlace) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeNum = null,
    Object? contentTypeId = null,
  }) {
    return _then(_$_CheckSavePlace(
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
class _$_CheckSavePlace implements _CheckSavePlace {
  const _$_CheckSavePlace(
      {required this.placeNum, required this.contentTypeId});

  factory _$_CheckSavePlace.fromJson(Map<String, dynamic> json) =>
      _$$_CheckSavePlaceFromJson(json);

  @override
  final String placeNum;
  @override
  final String contentTypeId;

  @override
  String toString() {
    return 'CheckSavePlace(placeNum: $placeNum, contentTypeId: $contentTypeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckSavePlace &&
            (identical(other.placeNum, placeNum) ||
                other.placeNum == placeNum) &&
            (identical(other.contentTypeId, contentTypeId) ||
                other.contentTypeId == contentTypeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, placeNum, contentTypeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CheckSavePlaceCopyWith<_$_CheckSavePlace> get copyWith =>
      __$$_CheckSavePlaceCopyWithImpl<_$_CheckSavePlace>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckSavePlaceToJson(
      this,
    );
  }
}

abstract class _CheckSavePlace implements CheckSavePlace {
  const factory _CheckSavePlace(
      {required final String placeNum,
      required final String contentTypeId}) = _$_CheckSavePlace;

  factory _CheckSavePlace.fromJson(Map<String, dynamic> json) =
      _$_CheckSavePlace.fromJson;

  @override
  String get placeNum;
  @override
  String get contentTypeId;
  @override
  @JsonKey(ignore: true)
  _$$_CheckSavePlaceCopyWith<_$_CheckSavePlace> get copyWith =>
      throw _privateConstructorUsedError;
}
