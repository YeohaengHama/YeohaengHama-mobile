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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchImageResult {
  List<String>? get imagesUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$_SearchImageResultCopyWith<$Res>
    implements $SearchImageResultCopyWith<$Res> {
  factory _$$_SearchImageResultCopyWith(_$_SearchImageResult value,
          $Res Function(_$_SearchImageResult) then) =
      __$$_SearchImageResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? imagesUrl});
}

/// @nodoc
class __$$_SearchImageResultCopyWithImpl<$Res>
    extends _$SearchImageResultCopyWithImpl<$Res, _$_SearchImageResult>
    implements _$$_SearchImageResultCopyWith<$Res> {
  __$$_SearchImageResultCopyWithImpl(
      _$_SearchImageResult _value, $Res Function(_$_SearchImageResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagesUrl = freezed,
  }) {
    return _then(_$_SearchImageResult(
      imagesUrl: freezed == imagesUrl
          ? _value._imagesUrl
          : imagesUrl // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_SearchImageResult implements _SearchImageResult {
  const _$_SearchImageResult({final List<String>? imagesUrl})
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchImageResult &&
            const DeepCollectionEquality()
                .equals(other._imagesUrl, _imagesUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_imagesUrl));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchImageResultCopyWith<_$_SearchImageResult> get copyWith =>
      __$$_SearchImageResultCopyWithImpl<_$_SearchImageResult>(
          this, _$identity);
}

abstract class _SearchImageResult implements SearchImageResult {
  const factory _SearchImageResult({final List<String>? imagesUrl}) =
      _$_SearchImageResult;

  @override
  List<String>? get imagesUrl;
  @override
  @JsonKey(ignore: true)
  _$$_SearchImageResultCopyWith<_$_SearchImageResult> get copyWith =>
      throw _privateConstructorUsedError;
}
