// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_tourism.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Tourism {
  int get id => throw _privateConstructorUsedError;
  String get tourismName => throw _privateConstructorUsedError;
  String get tourismArea => throw _privateConstructorUsedError;
  List<String> get tourismImages => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  /// Create a copy of Tourism
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TourismCopyWith<Tourism> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourismCopyWith<$Res> {
  factory $TourismCopyWith(Tourism value, $Res Function(Tourism) then) =
      _$TourismCopyWithImpl<$Res, Tourism>;
  @useResult
  $Res call(
      {int id,
      String tourismName,
      String tourismArea,
      List<String> tourismImages,
      String content});
}

/// @nodoc
class _$TourismCopyWithImpl<$Res, $Val extends Tourism>
    implements $TourismCopyWith<$Res> {
  _$TourismCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Tourism
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tourismName = null,
    Object? tourismArea = null,
    Object? tourismImages = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tourismName: null == tourismName
          ? _value.tourismName
          : tourismName // ignore: cast_nullable_to_non_nullable
              as String,
      tourismArea: null == tourismArea
          ? _value.tourismArea
          : tourismArea // ignore: cast_nullable_to_non_nullable
              as String,
      tourismImages: null == tourismImages
          ? _value.tourismImages
          : tourismImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TourismImplCopyWith<$Res> implements $TourismCopyWith<$Res> {
  factory _$$TourismImplCopyWith(
          _$TourismImpl value, $Res Function(_$TourismImpl) then) =
      __$$TourismImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String tourismName,
      String tourismArea,
      List<String> tourismImages,
      String content});
}

/// @nodoc
class __$$TourismImplCopyWithImpl<$Res>
    extends _$TourismCopyWithImpl<$Res, _$TourismImpl>
    implements _$$TourismImplCopyWith<$Res> {
  __$$TourismImplCopyWithImpl(
      _$TourismImpl _value, $Res Function(_$TourismImpl) _then)
      : super(_value, _then);

  /// Create a copy of Tourism
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tourismName = null,
    Object? tourismArea = null,
    Object? tourismImages = null,
    Object? content = null,
  }) {
    return _then(_$TourismImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == tourismName
          ? _value.tourismName
          : tourismName // ignore: cast_nullable_to_non_nullable
              as String,
      null == tourismArea
          ? _value.tourismArea
          : tourismArea // ignore: cast_nullable_to_non_nullable
              as String,
      null == tourismImages
          ? _value._tourismImages
          : tourismImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TourismImpl implements _Tourism {
  const _$TourismImpl(this.id, this.tourismName, this.tourismArea,
      final List<String> tourismImages, this.content)
      : _tourismImages = tourismImages;

  @override
  final int id;
  @override
  final String tourismName;
  @override
  final String tourismArea;
  final List<String> _tourismImages;
  @override
  List<String> get tourismImages {
    if (_tourismImages is EqualUnmodifiableListView) return _tourismImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tourismImages);
  }

  @override
  final String content;

  @override
  String toString() {
    return 'Tourism(id: $id, tourismName: $tourismName, tourismArea: $tourismArea, tourismImages: $tourismImages, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TourismImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tourismName, tourismName) ||
                other.tourismName == tourismName) &&
            (identical(other.tourismArea, tourismArea) ||
                other.tourismArea == tourismArea) &&
            const DeepCollectionEquality()
                .equals(other._tourismImages, _tourismImages) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, tourismName, tourismArea,
      const DeepCollectionEquality().hash(_tourismImages), content);

  /// Create a copy of Tourism
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TourismImplCopyWith<_$TourismImpl> get copyWith =>
      __$$TourismImplCopyWithImpl<_$TourismImpl>(this, _$identity);
}

abstract class _Tourism implements Tourism {
  const factory _Tourism(
      final int id,
      final String tourismName,
      final String tourismArea,
      final List<String> tourismImages,
      final String content) = _$TourismImpl;

  @override
  int get id;
  @override
  String get tourismName;
  @override
  String get tourismArea;
  @override
  List<String> get tourismImages;
  @override
  String get content;

  /// Create a copy of Tourism
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TourismImplCopyWith<_$TourismImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
