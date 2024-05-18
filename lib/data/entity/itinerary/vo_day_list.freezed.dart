// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_day_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DayList _$DayListFromJson(Map<String, dynamic> json) {
  return _DayList.fromJson(json);
}

/// @nodoc
mixin _$DayList {
  String get day => throw _privateConstructorUsedError;
  List<Place> get place => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayListCopyWith<DayList> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayListCopyWith<$Res> {
  factory $DayListCopyWith(DayList value, $Res Function(DayList) then) =
      _$DayListCopyWithImpl<$Res, DayList>;
  @useResult
  $Res call({String day, List<Place> place});
}

/// @nodoc
class _$DayListCopyWithImpl<$Res, $Val extends DayList>
    implements $DayListCopyWith<$Res> {
  _$DayListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? place = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayListImplCopyWith<$Res> implements $DayListCopyWith<$Res> {
  factory _$$DayListImplCopyWith(
          _$DayListImpl value, $Res Function(_$DayListImpl) then) =
      __$$DayListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String day, List<Place> place});
}

/// @nodoc
class __$$DayListImplCopyWithImpl<$Res>
    extends _$DayListCopyWithImpl<$Res, _$DayListImpl>
    implements _$$DayListImplCopyWith<$Res> {
  __$$DayListImplCopyWithImpl(
      _$DayListImpl _value, $Res Function(_$DayListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? place = null,
  }) {
    return _then(_$DayListImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value._place
          : place // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayListImpl implements _DayList {
  const _$DayListImpl({required this.day, required final List<Place> place})
      : _place = place;

  factory _$DayListImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayListImplFromJson(json);

  @override
  final String day;
  final List<Place> _place;
  @override
  List<Place> get place {
    if (_place is EqualUnmodifiableListView) return _place;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_place);
  }

  @override
  String toString() {
    return 'DayList(day: $day, place: $place)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayListImpl &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality().equals(other._place, _place));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, day, const DeepCollectionEquality().hash(_place));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayListImplCopyWith<_$DayListImpl> get copyWith =>
      __$$DayListImplCopyWithImpl<_$DayListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayListImplToJson(
      this,
    );
  }
}

abstract class _DayList implements DayList {
  const factory _DayList(
      {required final String day,
      required final List<Place> place}) = _$DayListImpl;

  factory _DayList.fromJson(Map<String, dynamic> json) = _$DayListImpl.fromJson;

  @override
  String get day;
  @override
  List<Place> get place;
  @override
  @JsonKey(ignore: true)
  _$$DayListImplCopyWith<_$DayListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
