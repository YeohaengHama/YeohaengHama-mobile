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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StyleTag {
  String get style => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$_StyleTagCopyWith<$Res> implements $StyleTagCopyWith<$Res> {
  factory _$$_StyleTagCopyWith(
          _$_StyleTag value, $Res Function(_$_StyleTag) then) =
      __$$_StyleTagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String style});
}

/// @nodoc
class __$$_StyleTagCopyWithImpl<$Res>
    extends _$StyleTagCopyWithImpl<$Res, _$_StyleTag>
    implements _$$_StyleTagCopyWith<$Res> {
  __$$_StyleTagCopyWithImpl(
      _$_StyleTag _value, $Res Function(_$_StyleTag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? style = null,
  }) {
    return _then(_$_StyleTag(
      null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StyleTag implements _StyleTag {
  const _$_StyleTag(this.style);

  @override
  final String style;

  @override
  String toString() {
    return 'StyleTag(style: $style)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StyleTag &&
            (identical(other.style, style) || other.style == style));
  }

  @override
  int get hashCode => Object.hash(runtimeType, style);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StyleTagCopyWith<_$_StyleTag> get copyWith =>
      __$$_StyleTagCopyWithImpl<_$_StyleTag>(this, _$identity);
}

abstract class _StyleTag implements StyleTag {
  const factory _StyleTag(final String style) = _$_StyleTag;

  @override
  String get style;
  @override
  @JsonKey(ignore: true)
  _$$_StyleTagCopyWith<_$_StyleTag> get copyWith =>
      throw _privateConstructorUsedError;
}
