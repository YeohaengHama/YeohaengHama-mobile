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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Tourism {
  int get id => throw _privateConstructorUsedError;
  String get tourismName => throw _privateConstructorUsedError;
  String get tourismArea => throw _privateConstructorUsedError;
  List<String> get tourismImages => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$_TourismCopyWith<$Res> implements $TourismCopyWith<$Res> {
  factory _$$_TourismCopyWith(
          _$_Tourism value, $Res Function(_$_Tourism) then) =
      __$$_TourismCopyWithImpl<$Res>;
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
class __$$_TourismCopyWithImpl<$Res>
    extends _$TourismCopyWithImpl<$Res, _$_Tourism>
    implements _$$_TourismCopyWith<$Res> {
  __$$_TourismCopyWithImpl(_$_Tourism _value, $Res Function(_$_Tourism) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tourismName = null,
    Object? tourismArea = null,
    Object? tourismImages = null,
    Object? content = null,
  }) {
    return _then(_$_Tourism(
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

class _$_Tourism implements _Tourism {
  const _$_Tourism(this.id, this.tourismName, this.tourismArea,
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Tourism &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TourismCopyWith<_$_Tourism> get copyWith =>
      __$$_TourismCopyWithImpl<_$_Tourism>(this, _$identity);
}

abstract class _Tourism implements Tourism {
  const factory _Tourism(
      final int id,
      final String tourismName,
      final String tourismArea,
      final List<String> tourismImages,
      final String content) = _$_Tourism;

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
  @override
  @JsonKey(ignore: true)
  _$$_TourismCopyWith<_$_Tourism> get copyWith =>
      throw _privateConstructorUsedError;
}
