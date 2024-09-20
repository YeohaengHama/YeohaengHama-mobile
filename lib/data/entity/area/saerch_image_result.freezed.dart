// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saerch_image_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchImageResult {
  List<String>? get imagesUrl => throw _privateConstructorUsedError;

  /// Create a copy of SearchImageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchImageResultCopyWith<SearchImageResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchImageResultCopyWith<$Res> {
  factory $SearchImageResultCopyWith(
          SearchImageResult value, $Res Function(SearchImageResult) then) =
      _$SearchImageResultCopyWithImpl<$Res, SearchImageResult>;
  @useResult
  $Res call({List<String>? imagesUrl});
}

/// @nodoc
class _$SearchImageResultCopyWithImpl<$Res, $Val extends SearchImageResult>
    implements $SearchImageResultCopyWith<$Res> {
  _$SearchImageResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchImageResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagesUrl = freezed,
  }) {
    return _then(_value.copyWith(
      imagesUrl: freezed == imagesUrl
          ? _value.imagesUrl
          : imagesUrl // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchImageResultImplCopyWith<$Res>
    implements $SearchImageResultCopyWith<$Res> {
  factory _$$SearchImageResultImplCopyWith(_$SearchImageResultImpl value,
          $Res Function(_$SearchImageResultImpl) then) =
      __$$SearchImageResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? imagesUrl});
}

/// @nodoc
class __$$SearchImageResultImplCopyWithImpl<$Res>
    extends _$SearchImageResultCopyWithImpl<$Res, _$SearchImageResultImpl>
    implements _$$SearchImageResultImplCopyWith<$Res> {
  __$$SearchImageResultImplCopyWithImpl(_$SearchImageResultImpl _value,
      $Res Function(_$SearchImageResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchImageResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagesUrl = freezed,
  }) {
    return _then(_$SearchImageResultImpl(
      imagesUrl: freezed == imagesUrl
          ? _value._imagesUrl
          : imagesUrl // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$SearchImageResultImpl implements _SearchImageResult {
  const _$SearchImageResultImpl({final List<String>? imagesUrl})
      : _imagesUrl = imagesUrl;

  final List<String>? _imagesUrl;
  @override
  List<String>? get imagesUrl {
    final value = _imagesUrl;
    if (value == null) return null;
    if (_imagesUrl is EqualUnmodifiableListView) return _imagesUrl;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchImageResult(imagesUrl: $imagesUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImageResultImpl &&
            const DeepCollectionEquality()
                .equals(other._imagesUrl, _imagesUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_imagesUrl));

  /// Create a copy of SearchImageResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImageResultImplCopyWith<_$SearchImageResultImpl> get copyWith =>
      __$$SearchImageResultImplCopyWithImpl<_$SearchImageResultImpl>(
          this, _$identity);
}

abstract class _SearchImageResult implements SearchImageResult {
  const factory _SearchImageResult({final List<String>? imagesUrl}) =
      _$SearchImageResultImpl;

  @override
  List<String>? get imagesUrl;

  /// Create a copy of SearchImageResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchImageResultImplCopyWith<_$SearchImageResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
