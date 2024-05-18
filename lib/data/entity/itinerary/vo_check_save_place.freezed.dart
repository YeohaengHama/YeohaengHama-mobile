// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_check_save_place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CheckSavePlaceVo {
  bool get isPick => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckSavePlaceVoCopyWith<CheckSavePlaceVo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckSavePlaceVoCopyWith<$Res> {
  factory $CheckSavePlaceVoCopyWith(
          CheckSavePlaceVo value, $Res Function(CheckSavePlaceVo) then) =
      _$CheckSavePlaceVoCopyWithImpl<$Res, CheckSavePlaceVo>;
  @useResult
  $Res call({bool isPick});
}

/// @nodoc
class _$CheckSavePlaceVoCopyWithImpl<$Res, $Val extends CheckSavePlaceVo>
    implements $CheckSavePlaceVoCopyWith<$Res> {
  _$CheckSavePlaceVoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPick = null,
  }) {
    return _then(_value.copyWith(
      isPick: null == isPick
          ? _value.isPick
          : isPick // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckSavePlaceVoImplCopyWith<$Res>
    implements $CheckSavePlaceVoCopyWith<$Res> {
  factory _$$CheckSavePlaceVoImplCopyWith(_$CheckSavePlaceVoImpl value,
          $Res Function(_$CheckSavePlaceVoImpl) then) =
      __$$CheckSavePlaceVoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPick});
}

/// @nodoc
class __$$CheckSavePlaceVoImplCopyWithImpl<$Res>
    extends _$CheckSavePlaceVoCopyWithImpl<$Res, _$CheckSavePlaceVoImpl>
    implements _$$CheckSavePlaceVoImplCopyWith<$Res> {
  __$$CheckSavePlaceVoImplCopyWithImpl(_$CheckSavePlaceVoImpl _value,
      $Res Function(_$CheckSavePlaceVoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPick = null,
  }) {
    return _then(_$CheckSavePlaceVoImpl(
      null == isPick
          ? _value.isPick
          : isPick // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CheckSavePlaceVoImpl implements _CheckSavePlaceVo {
  const _$CheckSavePlaceVoImpl(this.isPick);

  @override
  final bool isPick;

  @override
  String toString() {
    return 'CheckSavePlaceVo(isPick: $isPick)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckSavePlaceVoImpl &&
            (identical(other.isPick, isPick) || other.isPick == isPick));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPick);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckSavePlaceVoImplCopyWith<_$CheckSavePlaceVoImpl> get copyWith =>
      __$$CheckSavePlaceVoImplCopyWithImpl<_$CheckSavePlaceVoImpl>(
          this, _$identity);
}

abstract class _CheckSavePlaceVo implements CheckSavePlaceVo {
  const factory _CheckSavePlaceVo(final bool isPick) = _$CheckSavePlaceVoImpl;

  @override
  bool get isPick;
  @override
  @JsonKey(ignore: true)
  _$$CheckSavePlaceVoImplCopyWith<_$CheckSavePlaceVoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
