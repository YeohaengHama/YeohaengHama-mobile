// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Schedule {
  List<DateTime> get days => throw _privateConstructorUsedError;
  HamaArea? get area => throw _privateConstructorUsedError;
  List<Restaurant>? get pickRestaurant => throw _privateConstructorUsedError;
  List<Tourism>? get pickTourism => throw _privateConstructorUsedError;
  List<dynamic>? get pickMyArea => throw _privateConstructorUsedError;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res, Schedule>;
  @useResult
  $Res call(
      {List<DateTime> days,
      HamaArea? area,
      List<Restaurant>? pickRestaurant,
      List<Tourism>? pickTourism,
      List<dynamic>? pickMyArea});

  $HamaAreaCopyWith<$Res>? get area;
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res, $Val extends Schedule>
    implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? area = freezed,
    Object? pickRestaurant = freezed,
    Object? pickTourism = freezed,
    Object? pickMyArea = freezed,
  }) {
    return _then(_value.copyWith(
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as HamaArea?,
      pickRestaurant: freezed == pickRestaurant
          ? _value.pickRestaurant
          : pickRestaurant // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>?,
      pickTourism: freezed == pickTourism
          ? _value.pickTourism
          : pickTourism // ignore: cast_nullable_to_non_nullable
              as List<Tourism>?,
      pickMyArea: freezed == pickMyArea
          ? _value.pickMyArea
          : pickMyArea // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HamaAreaCopyWith<$Res>? get area {
    if (_value.area == null) {
      return null;
    }

    return $HamaAreaCopyWith<$Res>(_value.area!, (value) {
      return _then(_value.copyWith(area: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ScheduleImplCopyWith<$Res>
    implements $ScheduleCopyWith<$Res> {
  factory _$$ScheduleImplCopyWith(
          _$ScheduleImpl value, $Res Function(_$ScheduleImpl) then) =
      __$$ScheduleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DateTime> days,
      HamaArea? area,
      List<Restaurant>? pickRestaurant,
      List<Tourism>? pickTourism,
      List<dynamic>? pickMyArea});

  @override
  $HamaAreaCopyWith<$Res>? get area;
}

/// @nodoc
class __$$ScheduleImplCopyWithImpl<$Res>
    extends _$ScheduleCopyWithImpl<$Res, _$ScheduleImpl>
    implements _$$ScheduleImplCopyWith<$Res> {
  __$$ScheduleImplCopyWithImpl(
      _$ScheduleImpl _value, $Res Function(_$ScheduleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? area = freezed,
    Object? pickRestaurant = freezed,
    Object? pickTourism = freezed,
    Object? pickMyArea = freezed,
  }) {
    return _then(_$ScheduleImpl(
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DateTime>,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as HamaArea?,
      pickRestaurant: freezed == pickRestaurant
          ? _value._pickRestaurant
          : pickRestaurant // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>?,
      pickTourism: freezed == pickTourism
          ? _value._pickTourism
          : pickTourism // ignore: cast_nullable_to_non_nullable
              as List<Tourism>?,
      pickMyArea: freezed == pickMyArea
          ? _value._pickMyArea
          : pickMyArea // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

class _$ScheduleImpl implements _Schedule {
  _$ScheduleImpl(
      {required final List<DateTime> days,
      required this.area,
      final List<Restaurant>? pickRestaurant,
      final List<Tourism>? pickTourism,
      final List<dynamic>? pickMyArea})
      : _days = days,
        _pickRestaurant = pickRestaurant,
        _pickTourism = pickTourism,
        _pickMyArea = pickMyArea;

  final List<DateTime> _days;
  @override
  List<DateTime> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  final HamaArea? area;
  final List<Restaurant>? _pickRestaurant;
  @override
  List<Restaurant>? get pickRestaurant {
    final value = _pickRestaurant;
    if (value == null) return null;
    if (_pickRestaurant is EqualUnmodifiableListView) return _pickRestaurant;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Tourism>? _pickTourism;
  @override
  List<Tourism>? get pickTourism {
    final value = _pickTourism;
    if (value == null) return null;
    if (_pickTourism is EqualUnmodifiableListView) return _pickTourism;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _pickMyArea;
  @override
  List<dynamic>? get pickMyArea {
    final value = _pickMyArea;
    if (value == null) return null;
    if (_pickMyArea is EqualUnmodifiableListView) return _pickMyArea;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Schedule(days: $days, area: $area, pickRestaurant: $pickRestaurant, pickTourism: $pickTourism, pickMyArea: $pickMyArea)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleImpl &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.area, area) || other.area == area) &&
            const DeepCollectionEquality()
                .equals(other._pickRestaurant, _pickRestaurant) &&
            const DeepCollectionEquality()
                .equals(other._pickTourism, _pickTourism) &&
            const DeepCollectionEquality()
                .equals(other._pickMyArea, _pickMyArea));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_days),
      area,
      const DeepCollectionEquality().hash(_pickRestaurant),
      const DeepCollectionEquality().hash(_pickTourism),
      const DeepCollectionEquality().hash(_pickMyArea));

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      __$$ScheduleImplCopyWithImpl<_$ScheduleImpl>(this, _$identity);
}

abstract class _Schedule implements Schedule {
  factory _Schedule(
      {required final List<DateTime> days,
      required final HamaArea? area,
      final List<Restaurant>? pickRestaurant,
      final List<Tourism>? pickTourism,
      final List<dynamic>? pickMyArea}) = _$ScheduleImpl;

  @override
  List<DateTime> get days;
  @override
  HamaArea? get area;
  @override
  List<Restaurant>? get pickRestaurant;
  @override
  List<Tourism>? get pickTourism;
  @override
  List<dynamic>? get pickMyArea;

  /// Create a copy of Schedule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleImplCopyWith<_$ScheduleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
