// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_tourism_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TourismDetail {
  Tourism get tourism => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TourismDetailCopyWith<TourismDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourismDetailCopyWith<$Res> {
  factory $TourismDetailCopyWith(
          TourismDetail value, $Res Function(TourismDetail) then) =
      _$TourismDetailCopyWithImpl<$Res, TourismDetail>;
  @useResult
  $Res call({Tourism tourism, String content});

  $TourismCopyWith<$Res> get tourism;
}

/// @nodoc
class _$TourismDetailCopyWithImpl<$Res, $Val extends TourismDetail>
    implements $TourismDetailCopyWith<$Res> {
  _$TourismDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tourism = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      tourism: null == tourism
          ? _value.tourism
          : tourism // ignore: cast_nullable_to_non_nullable
              as Tourism,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TourismCopyWith<$Res> get tourism {
    return $TourismCopyWith<$Res>(_value.tourism, (value) {
      return _then(_value.copyWith(tourism: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TourismDetailCopyWith<$Res>
    implements $TourismDetailCopyWith<$Res> {
  factory _$$_TourismDetailCopyWith(
          _$_TourismDetail value, $Res Function(_$_TourismDetail) then) =
      __$$_TourismDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Tourism tourism, String content});

  @override
  $TourismCopyWith<$Res> get tourism;
}

/// @nodoc
class __$$_TourismDetailCopyWithImpl<$Res>
    extends _$TourismDetailCopyWithImpl<$Res, _$_TourismDetail>
    implements _$$_TourismDetailCopyWith<$Res> {
  __$$_TourismDetailCopyWithImpl(
      _$_TourismDetail _value, $Res Function(_$_TourismDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tourism = null,
    Object? content = null,
  }) {
    return _then(_$_TourismDetail(
      tourism: null == tourism
          ? _value.tourism
          : tourism // ignore: cast_nullable_to_non_nullable
              as Tourism,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TourismDetail implements _TourismDetail {
  const _$_TourismDetail({required this.tourism, required this.content});

  @override
  final Tourism tourism;
  @override
  final String content;

  @override
  String toString() {
    return 'TourismDetail(tourism: $tourism, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TourismDetail &&
            (identical(other.tourism, tourism) || other.tourism == tourism) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tourism, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TourismDetailCopyWith<_$_TourismDetail> get copyWith =>
      __$$_TourismDetailCopyWithImpl<_$_TourismDetail>(this, _$identity);
}

abstract class _TourismDetail implements TourismDetail {
  const factory _TourismDetail(
      {required final Tourism tourism,
      required final String content}) = _$_TourismDetail;

  @override
  Tourism get tourism;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$_TourismDetailCopyWith<_$_TourismDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
