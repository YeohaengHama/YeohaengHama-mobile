// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'a_check_itinerary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckItinerary _$CheckItineraryFromJson(Map<String, dynamic> json) {
  return _CheckItinerary.fromJson(json);
}

/// @nodoc
mixin _$CheckItinerary {
  String get itineraryId => throw _privateConstructorUsedError;
  List<String>? get type => throw _privateConstructorUsedError;
  List<String>? get style => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get transportation => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String? get expense => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  int get budgetId => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError; // Account 객체로 수정
  Map<String, List<PlaceByDay>> get placesByDay =>
      throw _privateConstructorUsedError; // Map<String, List<PlaceByDay>>로 수정
  List<SharedAccount> get sharedAccount => throw _privateConstructorUsedError;

  /// Serializes this CheckItinerary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CheckItinerary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckItineraryCopyWith<CheckItinerary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckItineraryCopyWith<$Res> {
  factory $CheckItineraryCopyWith(
          CheckItinerary value, $Res Function(CheckItinerary) then) =
      _$CheckItineraryCopyWithImpl<$Res, CheckItinerary>;
  @useResult
  $Res call(
      {String itineraryId,
      List<String>? type,
      List<String>? style,
      String name,
      String transportation,
      String area,
      String startDate,
      String? expense,
      String endDate,
      int budgetId,
      Account account,
      Map<String, List<PlaceByDay>> placesByDay,
      List<SharedAccount> sharedAccount});
}

/// @nodoc
class _$CheckItineraryCopyWithImpl<$Res, $Val extends CheckItinerary>
    implements $CheckItineraryCopyWith<$Res> {
  _$CheckItineraryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckItinerary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itineraryId = null,
    Object? type = freezed,
    Object? style = freezed,
    Object? name = null,
    Object? transportation = null,
    Object? area = null,
    Object? startDate = null,
    Object? expense = freezed,
    Object? endDate = null,
    Object? budgetId = null,
    Object? account = null,
    Object? placesByDay = null,
    Object? sharedAccount = null,
  }) {
    return _then(_value.copyWith(
      itineraryId: null == itineraryId
          ? _value.itineraryId
          : itineraryId // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      expense: freezed == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      budgetId: null == budgetId
          ? _value.budgetId
          : budgetId // ignore: cast_nullable_to_non_nullable
              as int,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      placesByDay: null == placesByDay
          ? _value.placesByDay
          : placesByDay // ignore: cast_nullable_to_non_nullable
              as Map<String, List<PlaceByDay>>,
      sharedAccount: null == sharedAccount
          ? _value.sharedAccount
          : sharedAccount // ignore: cast_nullable_to_non_nullable
              as List<SharedAccount>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckItineraryImplCopyWith<$Res>
    implements $CheckItineraryCopyWith<$Res> {
  factory _$$CheckItineraryImplCopyWith(_$CheckItineraryImpl value,
          $Res Function(_$CheckItineraryImpl) then) =
      __$$CheckItineraryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String itineraryId,
      List<String>? type,
      List<String>? style,
      String name,
      String transportation,
      String area,
      String startDate,
      String? expense,
      String endDate,
      int budgetId,
      Account account,
      Map<String, List<PlaceByDay>> placesByDay,
      List<SharedAccount> sharedAccount});
}

/// @nodoc
class __$$CheckItineraryImplCopyWithImpl<$Res>
    extends _$CheckItineraryCopyWithImpl<$Res, _$CheckItineraryImpl>
    implements _$$CheckItineraryImplCopyWith<$Res> {
  __$$CheckItineraryImplCopyWithImpl(
      _$CheckItineraryImpl _value, $Res Function(_$CheckItineraryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckItinerary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itineraryId = null,
    Object? type = freezed,
    Object? style = freezed,
    Object? name = null,
    Object? transportation = null,
    Object? area = null,
    Object? startDate = null,
    Object? expense = freezed,
    Object? endDate = null,
    Object? budgetId = null,
    Object? account = null,
    Object? placesByDay = null,
    Object? sharedAccount = null,
  }) {
    return _then(_$CheckItineraryImpl(
      itineraryId: null == itineraryId
          ? _value.itineraryId
          : itineraryId // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value._type
          : type // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      style: freezed == style
          ? _value._style
          : style // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
      expense: freezed == expense
          ? _value.expense
          : expense // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      budgetId: null == budgetId
          ? _value.budgetId
          : budgetId // ignore: cast_nullable_to_non_nullable
              as int,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
      placesByDay: null == placesByDay
          ? _value._placesByDay
          : placesByDay // ignore: cast_nullable_to_non_nullable
              as Map<String, List<PlaceByDay>>,
      sharedAccount: null == sharedAccount
          ? _value._sharedAccount
          : sharedAccount // ignore: cast_nullable_to_non_nullable
              as List<SharedAccount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckItineraryImpl implements _CheckItinerary {
  const _$CheckItineraryImpl(
      {required this.itineraryId,
      required final List<String>? type,
      required final List<String>? style,
      required this.name,
      required this.transportation,
      required this.area,
      required this.startDate,
      this.expense = '',
      required this.endDate,
      required this.budgetId,
      required this.account,
      required final Map<String, List<PlaceByDay>> placesByDay,
      required final List<SharedAccount> sharedAccount})
      : _type = type,
        _style = style,
        _placesByDay = placesByDay,
        _sharedAccount = sharedAccount;

  factory _$CheckItineraryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckItineraryImplFromJson(json);

  @override
  final String itineraryId;
  final List<String>? _type;
  @override
  List<String>? get type {
    final value = _type;
    if (value == null) return null;
    if (_type is EqualUnmodifiableListView) return _type;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _style;
  @override
  List<String>? get style {
    final value = _style;
    if (value == null) return null;
    if (_style is EqualUnmodifiableListView) return _style;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String name;
  @override
  final String transportation;
  @override
  final String area;
  @override
  final String startDate;
  @override
  @JsonKey()
  final String? expense;
  @override
  final String endDate;
  @override
  final int budgetId;
  @override
  final Account account;
// Account 객체로 수정
  final Map<String, List<PlaceByDay>> _placesByDay;
// Account 객체로 수정
  @override
  Map<String, List<PlaceByDay>> get placesByDay {
    if (_placesByDay is EqualUnmodifiableMapView) return _placesByDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_placesByDay);
  }

// Map<String, List<PlaceByDay>>로 수정
  final List<SharedAccount> _sharedAccount;
// Map<String, List<PlaceByDay>>로 수정
  @override
  List<SharedAccount> get sharedAccount {
    if (_sharedAccount is EqualUnmodifiableListView) return _sharedAccount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sharedAccount);
  }

  @override
  String toString() {
    return 'CheckItinerary(itineraryId: $itineraryId, type: $type, style: $style, name: $name, transportation: $transportation, area: $area, startDate: $startDate, expense: $expense, endDate: $endDate, budgetId: $budgetId, account: $account, placesByDay: $placesByDay, sharedAccount: $sharedAccount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckItineraryImpl &&
            (identical(other.itineraryId, itineraryId) ||
                other.itineraryId == itineraryId) &&
            const DeepCollectionEquality().equals(other._type, _type) &&
            const DeepCollectionEquality().equals(other._style, _style) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.transportation, transportation) ||
                other.transportation == transportation) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.expense, expense) || other.expense == expense) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.budgetId, budgetId) ||
                other.budgetId == budgetId) &&
            (identical(other.account, account) || other.account == account) &&
            const DeepCollectionEquality()
                .equals(other._placesByDay, _placesByDay) &&
            const DeepCollectionEquality()
                .equals(other._sharedAccount, _sharedAccount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      itineraryId,
      const DeepCollectionEquality().hash(_type),
      const DeepCollectionEquality().hash(_style),
      name,
      transportation,
      area,
      startDate,
      expense,
      endDate,
      budgetId,
      account,
      const DeepCollectionEquality().hash(_placesByDay),
      const DeepCollectionEquality().hash(_sharedAccount));

  /// Create a copy of CheckItinerary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckItineraryImplCopyWith<_$CheckItineraryImpl> get copyWith =>
      __$$CheckItineraryImplCopyWithImpl<_$CheckItineraryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckItineraryImplToJson(
      this,
    );
  }
}

abstract class _CheckItinerary implements CheckItinerary {
  const factory _CheckItinerary(
      {required final String itineraryId,
      required final List<String>? type,
      required final List<String>? style,
      required final String name,
      required final String transportation,
      required final String area,
      required final String startDate,
      final String? expense,
      required final String endDate,
      required final int budgetId,
      required final Account account,
      required final Map<String, List<PlaceByDay>> placesByDay,
      required final List<SharedAccount> sharedAccount}) = _$CheckItineraryImpl;

  factory _CheckItinerary.fromJson(Map<String, dynamic> json) =
      _$CheckItineraryImpl.fromJson;

  @override
  String get itineraryId;
  @override
  List<String>? get type;
  @override
  List<String>? get style;
  @override
  String get name;
  @override
  String get transportation;
  @override
  String get area;
  @override
  String get startDate;
  @override
  String? get expense;
  @override
  String get endDate;
  @override
  int get budgetId;
  @override
  Account get account; // Account 객체로 수정
  @override
  Map<String, List<PlaceByDay>>
      get placesByDay; // Map<String, List<PlaceByDay>>로 수정
  @override
  List<SharedAccount> get sharedAccount;

  /// Create a copy of CheckItinerary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckItineraryImplCopyWith<_$CheckItineraryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
