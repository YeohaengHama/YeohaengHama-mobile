// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_check_write_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckWriteReview _$CheckWriteReviewFromJson(Map<String, dynamic> json) {
  return _CheckWriteReview.fromJson(json);
}

/// @nodoc
mixin _$CheckWriteReview {
  String get placeNum => throw _privateConstructorUsedError;
  String get contentTypeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckWriteReviewCopyWith<CheckWriteReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckWriteReviewCopyWith<$Res> {
  factory $CheckWriteReviewCopyWith(
          CheckWriteReview value, $Res Function(CheckWriteReview) then) =
      _$CheckWriteReviewCopyWithImpl<$Res, CheckWriteReview>;
  @useResult
  $Res call({String placeNum, String contentTypeId});
}

/// @nodoc
class _$CheckWriteReviewCopyWithImpl<$Res, $Val extends CheckWriteReview>
    implements $CheckWriteReviewCopyWith<$Res> {
  _$CheckWriteReviewCopyWithImpl(this._value, this._then);

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
abstract class _$$CheckWriteReviewImplCopyWith<$Res>
    implements $CheckWriteReviewCopyWith<$Res> {
  factory _$$CheckWriteReviewImplCopyWith(_$CheckWriteReviewImpl value,
          $Res Function(_$CheckWriteReviewImpl) then) =
      __$$CheckWriteReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String placeNum, String contentTypeId});
}

/// @nodoc
class __$$CheckWriteReviewImplCopyWithImpl<$Res>
    extends _$CheckWriteReviewCopyWithImpl<$Res, _$CheckWriteReviewImpl>
    implements _$$CheckWriteReviewImplCopyWith<$Res> {
  __$$CheckWriteReviewImplCopyWithImpl(_$CheckWriteReviewImpl _value,
      $Res Function(_$CheckWriteReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeNum = null,
    Object? contentTypeId = null,
  }) {
    return _then(_$CheckWriteReviewImpl(
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
class _$CheckWriteReviewImpl implements _CheckWriteReview {
  const _$CheckWriteReviewImpl(
      {required this.placeNum, required this.contentTypeId});

  factory _$CheckWriteReviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckWriteReviewImplFromJson(json);

  @override
  final String placeNum;
  @override
  final String contentTypeId;

  @override
  String toString() {
    return 'CheckWriteReview(placeNum: $placeNum, contentTypeId: $contentTypeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckWriteReviewImpl &&
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
  _$$CheckWriteReviewImplCopyWith<_$CheckWriteReviewImpl> get copyWith =>
      __$$CheckWriteReviewImplCopyWithImpl<_$CheckWriteReviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckWriteReviewImplToJson(
      this,
    );
  }
}

abstract class _CheckWriteReview implements CheckWriteReview {
  const factory _CheckWriteReview(
      {required final String placeNum,
      required final String contentTypeId}) = _$CheckWriteReviewImpl;

  factory _CheckWriteReview.fromJson(Map<String, dynamic> json) =
      _$CheckWriteReviewImpl.fromJson;

  @override
  String get placeNum;
  @override
  String get contentTypeId;
  @override
  @JsonKey(ignore: true)
  _$$CheckWriteReviewImplCopyWith<_$CheckWriteReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
