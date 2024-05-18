// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_restaurants_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RestaurantsDetail {
  Restaurant get restaurant => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RestaurantsDetailCopyWith<RestaurantsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantsDetailCopyWith<$Res> {
  factory $RestaurantsDetailCopyWith(
          RestaurantsDetail value, $Res Function(RestaurantsDetail) then) =
      _$RestaurantsDetailCopyWithImpl<$Res, RestaurantsDetail>;
  @useResult
  $Res call({Restaurant restaurant, String content});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class _$RestaurantsDetailCopyWithImpl<$Res, $Val extends RestaurantsDetail>
    implements $RestaurantsDetailCopyWith<$Res> {
  _$RestaurantsDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurant = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantCopyWith<$Res> get restaurant {
    return $RestaurantCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RestaurantsDetailImplCopyWith<$Res>
    implements $RestaurantsDetailCopyWith<$Res> {
  factory _$$RestaurantsDetailImplCopyWith(_$RestaurantsDetailImpl value,
          $Res Function(_$RestaurantsDetailImpl) then) =
      __$$RestaurantsDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Restaurant restaurant, String content});

  @override
  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$$RestaurantsDetailImplCopyWithImpl<$Res>
    extends _$RestaurantsDetailCopyWithImpl<$Res, _$RestaurantsDetailImpl>
    implements _$$RestaurantsDetailImplCopyWith<$Res> {
  __$$RestaurantsDetailImplCopyWithImpl(_$RestaurantsDetailImpl _value,
      $Res Function(_$RestaurantsDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurant = null,
    Object? content = null,
  }) {
    return _then(_$RestaurantsDetailImpl(
      restaurant: null == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RestaurantsDetailImpl implements _RestaurantsDetail {
  const _$RestaurantsDetailImpl(
      {required this.restaurant, required this.content});

  @override
  final Restaurant restaurant;
  @override
  final String content;

  @override
  String toString() {
    return 'RestaurantsDetail(restaurant: $restaurant, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantsDetailImpl &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restaurant, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantsDetailImplCopyWith<_$RestaurantsDetailImpl> get copyWith =>
      __$$RestaurantsDetailImplCopyWithImpl<_$RestaurantsDetailImpl>(
          this, _$identity);
}

abstract class _RestaurantsDetail implements RestaurantsDetail {
  const factory _RestaurantsDetail(
      {required final Restaurant restaurant,
      required final String content}) = _$RestaurantsDetailImpl;

  @override
  Restaurant get restaurant;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantsDetailImplCopyWith<_$RestaurantsDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
