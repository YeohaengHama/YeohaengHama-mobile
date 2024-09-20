// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_restaurants.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Restaurant {
  int get id => throw _privateConstructorUsedError;
  String get restaurantName => throw _privateConstructorUsedError;
  String get restaurantArea => throw _privateConstructorUsedError;
  List<String> get retaurantImages => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestaurantCopyWith<Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res, Restaurant>;
  @useResult
  $Res call(
      {int id,
      String restaurantName,
      String restaurantArea,
      List<String> retaurantImages,
      String content});
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res, $Val extends Restaurant>
    implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? restaurantName = null,
    Object? restaurantArea = null,
    Object? retaurantImages = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      restaurantName: null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantArea: null == restaurantArea
          ? _value.restaurantArea
          : restaurantArea // ignore: cast_nullable_to_non_nullable
              as String,
      retaurantImages: null == retaurantImages
          ? _value.retaurantImages
          : retaurantImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurantImplCopyWith<$Res>
    implements $RestaurantCopyWith<$Res> {
  factory _$$RestaurantImplCopyWith(
          _$RestaurantImpl value, $Res Function(_$RestaurantImpl) then) =
      __$$RestaurantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String restaurantName,
      String restaurantArea,
      List<String> retaurantImages,
      String content});
}

/// @nodoc
class __$$RestaurantImplCopyWithImpl<$Res>
    extends _$RestaurantCopyWithImpl<$Res, _$RestaurantImpl>
    implements _$$RestaurantImplCopyWith<$Res> {
  __$$RestaurantImplCopyWithImpl(
      _$RestaurantImpl _value, $Res Function(_$RestaurantImpl) _then)
      : super(_value, _then);

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? restaurantName = null,
    Object? restaurantArea = null,
    Object? retaurantImages = null,
    Object? content = null,
  }) {
    return _then(_$RestaurantImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      null == restaurantArea
          ? _value.restaurantArea
          : restaurantArea // ignore: cast_nullable_to_non_nullable
              as String,
      null == retaurantImages
          ? _value._retaurantImages
          : retaurantImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RestaurantImpl implements _Restaurant {
  const _$RestaurantImpl(this.id, this.restaurantName, this.restaurantArea,
      final List<String> retaurantImages, this.content)
      : _retaurantImages = retaurantImages;

  @override
  final int id;
  @override
  final String restaurantName;
  @override
  final String restaurantArea;
  final List<String> _retaurantImages;
  @override
  List<String> get retaurantImages {
    if (_retaurantImages is EqualUnmodifiableListView) return _retaurantImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_retaurantImages);
  }

  @override
  final String content;

  @override
  String toString() {
    return 'Restaurant(id: $id, restaurantName: $restaurantName, restaurantArea: $restaurantArea, retaurantImages: $retaurantImages, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            (identical(other.restaurantArea, restaurantArea) ||
                other.restaurantArea == restaurantArea) &&
            const DeepCollectionEquality()
                .equals(other._retaurantImages, _retaurantImages) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      restaurantName,
      restaurantArea,
      const DeepCollectionEquality().hash(_retaurantImages),
      content);

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantImplCopyWith<_$RestaurantImpl> get copyWith =>
      __$$RestaurantImplCopyWithImpl<_$RestaurantImpl>(this, _$identity);
}

abstract class _Restaurant implements Restaurant {
  const factory _Restaurant(
      final int id,
      final String restaurantName,
      final String restaurantArea,
      final List<String> retaurantImages,
      final String content) = _$RestaurantImpl;

  @override
  int get id;
  @override
  String get restaurantName;
  @override
  String get restaurantArea;
  @override
  List<String> get retaurantImages;
  @override
  String get content;

  /// Create a copy of Restaurant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestaurantImplCopyWith<_$RestaurantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
