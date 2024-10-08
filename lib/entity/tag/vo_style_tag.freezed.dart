// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_style_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StyleTag {
  String get style => throw _privateConstructorUsedError;

  /// Create a copy of StyleTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StyleTagCopyWith<StyleTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StyleTagCopyWith<$Res> {
  factory $StyleTagCopyWith(StyleTag value, $Res Function(StyleTag) then) =
      _$StyleTagCopyWithImpl<$Res, StyleTag>;
  @useResult
  $Res call({String style});
}

/// @nodoc
class _$StyleTagCopyWithImpl<$Res, $Val extends StyleTag>
    implements $StyleTagCopyWith<$Res> {
  _$StyleTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StyleTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
  }) {
    return _then(_value.copyWith(
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StyleTagImplCopyWith<$Res>
    implements $StyleTagCopyWith<$Res> {
  factory _$$StyleTagImplCopyWith(
          _$StyleTagImpl value, $Res Function(_$StyleTagImpl) then) =
      __$$StyleTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String style});
}

/// @nodoc
class __$$StyleTagImplCopyWithImpl<$Res>
    extends _$StyleTagCopyWithImpl<$Res, _$StyleTagImpl>
    implements _$$StyleTagImplCopyWith<$Res> {
  __$$StyleTagImplCopyWithImpl(
      _$StyleTagImpl _value, $Res Function(_$StyleTagImpl) _then)
      : super(_value, _then);

  /// Create a copy of StyleTag
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
  }) {
    return _then(_$StyleTagImpl(
      null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StyleTagImpl implements _StyleTag {
  const _$StyleTagImpl(this.style);

  @override
  final String style;

  @override
  String toString() {
    return 'StyleTag(style: $style)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StyleTagImpl &&
            (identical(other.style, style) || other.style == style));
  }

  @override
  int get hashCode => Object.hash(runtimeType, style);

  /// Create a copy of StyleTag
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StyleTagImplCopyWith<_$StyleTagImpl> get copyWith =>
      __$$StyleTagImplCopyWithImpl<_$StyleTagImpl>(this, _$identity);
}

abstract class _StyleTag implements StyleTag {
  const factory _StyleTag(final String style) = _$StyleTagImpl;

  @override
  String get style;

  /// Create a copy of StyleTag
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StyleTagImplCopyWith<_$StyleTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
