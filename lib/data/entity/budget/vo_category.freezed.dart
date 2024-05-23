// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryIcon {
  IconData get icon => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryIconCopyWith<CategoryIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryIconCopyWith<$Res> {
  factory $CategoryIconCopyWith(
          CategoryIcon value, $Res Function(CategoryIcon) then) =
      _$CategoryIconCopyWithImpl<$Res, CategoryIcon>;
  @useResult
  $Res call({IconData icon, String category, Color color});
}

/// @nodoc
class _$CategoryIconCopyWithImpl<$Res, $Val extends CategoryIcon>
    implements $CategoryIconCopyWith<$Res> {
  _$CategoryIconCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? category = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryIconImplCopyWith<$Res>
    implements $CategoryIconCopyWith<$Res> {
  factory _$$CategoryIconImplCopyWith(
          _$CategoryIconImpl value, $Res Function(_$CategoryIconImpl) then) =
      __$$CategoryIconImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IconData icon, String category, Color color});
}

/// @nodoc
class __$$CategoryIconImplCopyWithImpl<$Res>
    extends _$CategoryIconCopyWithImpl<$Res, _$CategoryIconImpl>
    implements _$$CategoryIconImplCopyWith<$Res> {
  __$$CategoryIconImplCopyWithImpl(
      _$CategoryIconImpl _value, $Res Function(_$CategoryIconImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? category = null,
    Object? color = null,
  }) {
    return _then(_$CategoryIconImpl(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconData,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$CategoryIconImpl implements _CategoryIcon {
  const _$CategoryIconImpl(
      {required this.icon, required this.category, required this.color});

  @override
  final IconData icon;
  @override
  final String category;
  @override
  final Color color;

  @override
  String toString() {
    return 'CategoryIcon(icon: $icon, category: $category, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryIconImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, icon, category, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryIconImplCopyWith<_$CategoryIconImpl> get copyWith =>
      __$$CategoryIconImplCopyWithImpl<_$CategoryIconImpl>(this, _$identity);
}

abstract class _CategoryIcon implements CategoryIcon {
  const factory _CategoryIcon(
      {required final IconData icon,
      required final String category,
      required final Color color}) = _$CategoryIconImpl;

  @override
  IconData get icon;
  @override
  String get category;
  @override
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$CategoryIconImplCopyWith<_$CategoryIconImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
