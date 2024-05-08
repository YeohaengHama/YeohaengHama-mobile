// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_itinerary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Itinerary _$ItineraryFromJson(Map<String, dynamic> json) {
  return _Itinerary.fromJson(json);
}

/// @nodoc
mixin _$Itinerary {
  String get name => throw _privateConstructorUsedError;
  List<String> get type => throw _privateConstructorUsedError;
  List<String> get itineraryStyle => throw _privateConstructorUsedError;
  String get transportation => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  String? get expense => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItineraryCopyWith<Itinerary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItineraryCopyWith<$Res> {
  factory $ItineraryCopyWith(Itinerary value, $Res Function(Itinerary) then) =
      _$ItineraryCopyWithImpl<$Res, Itinerary>;
  @useResult
  $Res call(
      {String name,
      List<String> type,
      List<String> itineraryStyle,
      String transportation,
      String area,
      String startDate,
      String endDate,
      String? expense});
}

/// @nodoc
class _$ItineraryCopyWithImpl<$Res, $Val extends Itinerary>
    implements $ItineraryCopyWith<$Res> {
  _$ItineraryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? itineraryStyle = null,
    Object? transportation = null,
    Object? area = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? expense = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itineraryStyle: null == itineraryStyle
          ? _value.itineraryStyle
          : itineraryStyle // ignore: cast_nullable_to_non_nullable
              as List<String>,
      transportation: null == transportation
          ? _value.transportation
          : transportation // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_ItineraryCopyWith<$Res> implements $ItineraryCopyWith<$Res> {
  factory _$$_ItineraryCopyWith(
          _$_Itinerary value, $Res Function(_$_Itinerary) then) =
      __$$_ItineraryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      List<String> type,
      List<String> itineraryStyle,
      String transportation,
      String area,
      String startDate,
      String endDate,
      String? expense});
}

/// @nodoc
class __$$_ItineraryCopyWithImpl<$Res>
    extends _$ItineraryCopyWithImpl<$Res, _$_Itinerary>
    implements _$$_ItineraryCopyWith<$Res> {
  __$$_ItineraryCopyWithImpl(
      _$_Itinerary _value, $Res Function(_$_Itinerary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? itineraryStyle = null,
    Object? transportation = null,
    Object? area = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? expense = freezed,
  }) {
    return _then(_$_Itinerary(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<String>,
      itineraryStyle: null == itineraryStyle
          ? _value._itineraryStyle
          : itineraryStyle // ignore: cast_nullable_to_non_nullable
              as List<String>,
      transportation: null == transportation
          ? _value.transportation
          : transportation // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$_Itinerary implements _Itinerary {
  const _$_Itinerary(
      {required this.name,
      required final List<String> type,
      required final List<String> itineraryStyle,
      this.transportation = 'bus',
      required this.area,
      required this.startDate,
      required this.endDate,
      this.expense = '0'})
      : _type = type,
        _itineraryStyle = itineraryStyle;

  factory _$_Itinerary.fromJson(Map<String, dynamic> json) =>
      _$$_ItineraryFromJson(json);

  @override
  final String name;
  final List<String> _type;
  @override
  List<String> get type {
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_type);
  }

  final List<String> _itineraryStyle;
  @override
  List<String> get itineraryStyle {
    if (_itineraryStyle is EqualUnmodifiableListView) return _itineraryStyle;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itineraryStyle);
  }

  @override
  @JsonKey()
  final String transportation;
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
    return 'Itinerary(name: $name, type: $type, itineraryStyle: $itineraryStyle, transportation: $transportation, area: $area, startDate: $startDate, endDate: $endDate, expense: $expense)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Itinerary &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            const DeepCollectionEquality()
                .equals(other._itineraryStyle, _itineraryStyle) &&
            (identical(other.transportation, transportation) ||
                other.transportation == transportation) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.expense, expense) || other.expense == expense));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_type),
      const DeepCollectionEquality().hash(_itineraryStyle),
      transportation,
      area,
      startDate,
      endDate,
      expense);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItineraryCopyWith<_$_Itinerary> get copyWith =>
      __$$_ItineraryCopyWithImpl<_$_Itinerary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItineraryToJson(
      this,
    );
  }
}

abstract class _Itinerary implements Itinerary {
  const factory _Itinerary(
      {required final String name,
      required final List<String> type,
      required final List<String> itineraryStyle,
      final String transportation,
      required final String area,
      required final String startDate,
      required final String endDate,
      final String? expense}) = _$_Itinerary;

  factory _Itinerary.fromJson(Map<String, dynamic> json) =
      _$_Itinerary.fromJson;

  @override
  String get name;
  @override
  List<String> get type;
  @override
  List<String> get itineraryStyle;
  @override
  String get transportation;
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
  _$$_ItineraryCopyWith<_$_Itinerary> get copyWith =>
      throw _privateConstructorUsedError;
}
