// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_itinerary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllItinerary _$AllItineraryFromJson(Map<String, dynamic> json) {
  return _AllItinerary.fromJson(json);
}

/// @nodoc
mixin _$AllItinerary {
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get placeLength => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllItineraryCopyWith<AllItinerary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllItineraryCopyWith<$Res> {
  factory $AllItineraryCopyWith(
          AllItinerary value, $Res Function(AllItinerary) then) =
      _$AllItineraryCopyWithImpl<$Res, AllItinerary>;
  @useResult
  $Res call(
      {String startDate, String endDate, int id, String name, int placeLength});
}

/// @nodoc
class _$AllItineraryCopyWithImpl<$Res, $Val extends AllItinerary>
    implements $AllItineraryCopyWith<$Res> {
  _$AllItineraryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? id = null,
    Object? name = null,
    Object? placeLength = null,
  }) {
    return _then(_value.copyWith(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeLength: null == placeLength
          ? _value.placeLength
          : placeLength // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllItineraryCopyWith<$Res>
    implements $AllItineraryCopyWith<$Res> {
  factory _$$_AllItineraryCopyWith(
          _$_AllItinerary value, $Res Function(_$_AllItinerary) then) =
      __$$_AllItineraryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String startDate, String endDate, int id, String name, int placeLength});
}

/// @nodoc
class __$$_AllItineraryCopyWithImpl<$Res>
    extends _$AllItineraryCopyWithImpl<$Res, _$_AllItinerary>
    implements _$$_AllItineraryCopyWith<$Res> {
  __$$_AllItineraryCopyWithImpl(
      _$_AllItinerary _value, $Res Function(_$_AllItinerary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDate = null,
    Object? endDate = null,
    Object? id = null,
    Object? name = null,
    Object? placeLength = null,
  }) {
    return _then(_$_AllItinerary(
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      placeLength: null == placeLength
          ? _value.placeLength
          : placeLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllItinerary implements _AllItinerary {
  const _$_AllItinerary(
      {required this.startDate,
      required this.endDate,
      required this.id,
      required this.name,
      required this.placeLength});

  factory _$_AllItinerary.fromJson(Map<String, dynamic> json) =>
      _$$_AllItineraryFromJson(json);

  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final int id;
  @override
  final String name;
  @override
  final int placeLength;

  @override
  String toString() {
    return 'AllItinerary(startDate: $startDate, endDate: $endDate, id: $id, name: $name, placeLength: $placeLength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllItinerary &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.placeLength, placeLength) ||
                other.placeLength == placeLength));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, startDate, endDate, id, name, placeLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllItineraryCopyWith<_$_AllItinerary> get copyWith =>
      __$$_AllItineraryCopyWithImpl<_$_AllItinerary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllItineraryToJson(
      this,
    );
  }
}

abstract class _AllItinerary implements AllItinerary {
  const factory _AllItinerary(
      {required final String startDate,
      required final String endDate,
      required final int id,
      required final String name,
      required final int placeLength}) = _$_AllItinerary;

  factory _AllItinerary.fromJson(Map<String, dynamic> json) =
      _$_AllItinerary.fromJson;

  @override
  String get startDate;
  @override
  String get endDate;
  @override
  int get id;
  @override
  String get name;
  @override
  int get placeLength;
  @override
  @JsonKey(ignore: true)
  _$$_AllItineraryCopyWith<_$_AllItinerary> get copyWith =>
      throw _privateConstructorUsedError;
}
