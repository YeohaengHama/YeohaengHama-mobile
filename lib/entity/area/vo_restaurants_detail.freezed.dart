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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_RestaurantsDetailCopyWith<$Res>
    implements $RestaurantsDetailCopyWith<$Res> {
  factory _$$_RestaurantsDetailCopyWith(_$_RestaurantsDetail value,
          $Res Function(_$_RestaurantsDetail) then) =
      __$$_RestaurantsDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Restaurant restaurant, String content});

  @override
  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$$_RestaurantsDetailCopyWithImpl<$Res>
    extends _$RestaurantsDetailCopyWithImpl<$Res, _$_RestaurantsDetail>
    implements _$$_RestaurantsDetailCopyWith<$Res> {
  __$$_RestaurantsDetailCopyWithImpl(
      _$_RestaurantsDetail _value, $Res Function(_$_RestaurantsDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? restaurant = null,
    Object? content = null,
  }) {
    return _then(_$_RestaurantsDetail(
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

class _$_RestaurantsDetail implements _RestaurantsDetail {
  const _$_RestaurantsDetail({required this.restaurant, required this.content});

  @override
  final Restaurant restaurant;
  @override
  final String content;

  @override
  String toString() {
    return 'RestaurantsDetail(restaurant: $restaurant, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestaurantsDetail &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restaurant, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RestaurantsDetailCopyWith<_$_RestaurantsDetail> get copyWith =>
      __$$_RestaurantsDetailCopyWithImpl<_$_RestaurantsDetail>(
          this, _$identity);
}

abstract class _RestaurantsDetail implements RestaurantsDetail {
  const factory _RestaurantsDetail(
      {required final Restaurant restaurant,
      required final String content}) = _$_RestaurantsDetail;

  @override
  Restaurant get restaurant;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_RestaurantsDetailCopyWith<_$_RestaurantsDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
