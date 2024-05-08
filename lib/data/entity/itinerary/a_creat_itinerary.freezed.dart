// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'a_creat_itinerary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateItinerary {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get type => throw _privateConstructorUsedError;
  List<String> get style => throw _privateConstructorUsedError;
  String? get transportation => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  String? get expense => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateItineraryCopyWith<CreateItinerary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateItineraryCopyWith<$Res> {
  factory $CreateItineraryCopyWith(
          CreateItinerary value, $Res Function(CreateItinerary) then) =
      _$CreateItineraryCopyWithImpl<$Res, CreateItinerary>;
  @useResult
  $Res call(
      {int id,
      String name,
      List<String> type,
      List<String> style,
      String? transportation,
      String area,
      String startDate,
      String endDate,
      String? expense});
}

/// @nodoc
class _$CreateItineraryCopyWithImpl<$Res, $Val extends CreateItinerary>
    implements $CreateItineraryCopyWith<$Res> {
  _$CreateItineraryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? style = null,
    Object? transportation = freezed,
    Object? area = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? expense = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<String>,
      style: null == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as List<String>,
      transportation: freezed == transportation
          ? _value.transportation
          : transportation // ignore: cast_nullable_to_non_nullable
              as String?,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      expense: freezed == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateItineraryCopyWith<$Res>
    implements $CreateItineraryCopyWith<$Res> {
  factory _$$_CreateItineraryCopyWith(
          _$_CreateItinerary value, $Res Function(_$_CreateItinerary) then) =
      __$$_CreateItineraryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      List<String> type,
      List<String> style,
      String? transportation,
      String area,
      String startDate,
      String endDate,
      String? expense});
}

/// @nodoc
class __$$_CreateItineraryCopyWithImpl<$Res>
    extends _$CreateItineraryCopyWithImpl<$Res, _$_CreateItinerary>
    implements _$$_CreateItineraryCopyWith<$Res> {
  __$$_CreateItineraryCopyWithImpl(
      _$_CreateItinerary _value, $Res Function(_$_CreateItinerary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? style = null,
    Object? transportation = freezed,
    Object? area = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? expense = freezed,
  }) {
    return _then(_$_CreateItinerary(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<String>,
      style: null == style
          ? _value._style
          : style // ignore: cast_nullable_to_non_nullable
              as List<String>,
      transportation: freezed == transportation
          ? _value.transportation
          : transportation // ignore: cast_nullable_to_non_nullable
              as String?,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      expense: freezed == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CreateItinerary implements _CreateItinerary {
  const _$_CreateItinerary(
      {required this.id,
      required this.name,
      required final List<String> type,
      required final List<String> style,
      this.transportation = 'Bus',
      required this.area,
      required this.startDate,
      required this.endDate,
      this.expense = '0'})
      : _type = type,
        _style = style;

  @override
  final int id;
  @override
  final String name;
  final List<String> _type;
  @override
  List<String> get type {
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_type);
  }

  final List<String> _style;
  @override
  List<String> get style {
    if (_style is EqualUnmodifiableListView) return _style;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_style);
  }

  @override
  @JsonKey()
  final String? transportation;
  @override
  final String area;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  @JsonKey()
  final String? expense;

  @override
  String toString() {
    return 'CreateItinerary(id: $id, name: $name, type: $type, style: $style, transportation: $transportation, area: $area, startDate: $startDate, endDate: $endDate, expense: $expense)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateItinerary &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            const DeepCollectionEquality().equals(other._style, _style) &&
            (identical(other.transportation, transportation) ||
                other.transportation == transportation) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.expense, expense) || other.expense == expense));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_type),
      const DeepCollectionEquality().hash(_style),
      transportation,
      area,
      startDate,
      endDate,
      expense);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateItineraryCopyWith<_$_CreateItinerary> get copyWith =>
      __$$_CreateItineraryCopyWithImpl<_$_CreateItinerary>(this, _$identity);
}

abstract class _CreateItinerary implements CreateItinerary {
  const factory _CreateItinerary(
      {required final int id,
      required final String name,
      required final List<String> type,
      required final List<String> style,
      final String? transportation,
      required final String area,
      required final String startDate,
      required final String endDate,
      final String? expense}) = _$_CreateItinerary;

  @override
  int get id;
  @override
  String get name;
  @override
  List<String> get type;
  @override
  List<String> get style;
  @override
  String? get transportation;
  @override
  String get area;
  @override
  String get startDate;
  @override
  String get endDate;
  @override
  String? get expense;
  @override
  @JsonKey(ignore: true)
  _$$_CreateItineraryCopyWith<_$_CreateItinerary> get copyWith =>
      throw _privateConstructorUsedError;
}
