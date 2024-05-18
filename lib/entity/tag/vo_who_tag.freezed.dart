// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_who_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WhoTag {
  String get who => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WhoTagCopyWith<WhoTag> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WhoTagCopyWith<$Res> {
  factory $WhoTagCopyWith(WhoTag value, $Res Function(WhoTag) then) =
      _$WhoTagCopyWithImpl<$Res, WhoTag>;
  @useResult
  $Res call({String who});
}

/// @nodoc
class _$WhoTagCopyWithImpl<$Res, $Val extends WhoTag>
    implements $WhoTagCopyWith<$Res> {
  _$WhoTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? who = null,
  }) {
    return _then(_value.copyWith(
      who: null == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WhoTagImplCopyWith<$Res> implements $WhoTagCopyWith<$Res> {
  factory _$$WhoTagImplCopyWith(
          _$WhoTagImpl value, $Res Function(_$WhoTagImpl) then) =
      __$$WhoTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String who});
}

/// @nodoc
class __$$WhoTagImplCopyWithImpl<$Res>
    extends _$WhoTagCopyWithImpl<$Res, _$WhoTagImpl>
    implements _$$WhoTagImplCopyWith<$Res> {
  __$$WhoTagImplCopyWithImpl(
      _$WhoTagImpl _value, $Res Function(_$WhoTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? who = null,
  }) {
    return _then(_$WhoTagImpl(
      null == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WhoTagImpl implements _WhoTag {
  const _$WhoTagImpl(this.who);

  @override
  final String who;

  @override
  String toString() {
    return 'WhoTag(who: $who)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WhoTagImpl &&
            (identical(other.who, who) || other.who == who));
  }

  @override
  int get hashCode => Object.hash(runtimeType, who);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WhoTagImplCopyWith<_$WhoTagImpl> get copyWith =>
      __$$WhoTagImplCopyWithImpl<_$WhoTagImpl>(this, _$identity);
}

abstract class _WhoTag implements WhoTag {
  const factory _WhoTag(final String who) = _$WhoTagImpl;

  @override
  String get who;
  @override
  @JsonKey(ignore: true)
  _$$WhoTagImplCopyWith<_$WhoTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
