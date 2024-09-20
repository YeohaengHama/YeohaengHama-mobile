// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_tourism_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TourismDetail {
  Tourism get tourism => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Create a copy of TourismDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourismDetailCopyWith<TourismDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourismDetailCopyWith<$Res> {
  factory $TourismDetailCopyWith(
          TourismDetail value, $Res Function(TourismDetail) then) =
      _$TourismDetailCopyWithImpl<$Res, TourismDetail>;
  @useResult
  $Res call({Tourism tourism, String content});

  $TourismCopyWith<$Res> get tourism;
}

/// @nodoc
class _$TourismDetailCopyWithImpl<$Res, $Val extends TourismDetail>
    implements $TourismDetailCopyWith<$Res> {
  _$TourismDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TourismDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tourism = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      tourism: null == tourism
          ? _value.tourism
          : tourism // ignore: cast_nullable_to_non_nullable
              as Tourism,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of TourismDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TourismCopyWith<$Res> get tourism {
    return $TourismCopyWith<$Res>(_value.tourism, (value) {
      return _then(_value.copyWith(tourism: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TourismDetailImplCopyWith<$Res>
    implements $TourismDetailCopyWith<$Res> {
  factory _$$TourismDetailImplCopyWith(
          _$TourismDetailImpl value, $Res Function(_$TourismDetailImpl) then) =
      __$$TourismDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Tourism tourism, String content});

  @override
  $TourismCopyWith<$Res> get tourism;
}

/// @nodoc
class __$$TourismDetailImplCopyWithImpl<$Res>
    extends _$TourismDetailCopyWithImpl<$Res, _$TourismDetailImpl>
    implements _$$TourismDetailImplCopyWith<$Res> {
  __$$TourismDetailImplCopyWithImpl(
      _$TourismDetailImpl _value, $Res Function(_$TourismDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of TourismDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tourism = null,
    Object? content = null,
  }) {
    return _then(_$TourismDetailImpl(
      tourism: null == tourism
          ? _value.tourism
          : tourism // ignore: cast_nullable_to_non_nullable
              as Tourism,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TourismDetailImpl implements _TourismDetail {
  const _$TourismDetailImpl({required this.tourism, required this.content});

  @override
  final Tourism tourism;
  @override
  final String content;

  @override
  String toString() {
    return 'TourismDetail(tourism: $tourism, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourismDetailImpl &&
            (identical(other.tourism, tourism) || other.tourism == tourism) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tourism, content);

  /// Create a copy of TourismDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourismDetailImplCopyWith<_$TourismDetailImpl> get copyWith =>
      __$$TourismDetailImplCopyWithImpl<_$TourismDetailImpl>(this, _$identity);
}

abstract class _TourismDetail implements TourismDetail {
  const factory _TourismDetail(
      {required final Tourism tourism,
      required final String content}) = _$TourismDetailImpl;

  @override
  Tourism get tourism;
  @override
  String get content;

  /// Create a copy of TourismDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourismDetailImplCopyWith<_$TourismDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
