// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_current_budget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CurrentBudget {
  int get budgetId => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  int get itineraryId => throw _privateConstructorUsedError;
  Map<String, List<Expenditure>> get expendituresList =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentBudgetCopyWith<CurrentBudget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentBudgetCopyWith<$Res> {
  factory $CurrentBudgetCopyWith(
          CurrentBudget value, $Res Function(CurrentBudget) then) =
      _$CurrentBudgetCopyWithImpl<$Res, CurrentBudget>;
  @useResult
  $Res call(
      {int budgetId,
      int totalAmount,
      int itineraryId,
      Map<String, List<Expenditure>> expendituresList});
}

/// @nodoc
class _$CurrentBudgetCopyWithImpl<$Res, $Val extends CurrentBudget>
    implements $CurrentBudgetCopyWith<$Res> {
  _$CurrentBudgetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budgetId = null,
    Object? totalAmount = null,
    Object? itineraryId = null,
    Object? expendituresList = null,
  }) {
    return _then(_value.copyWith(
      budgetId: null == budgetId
          ? _value.budgetId
          : budgetId // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      itineraryId: null == itineraryId
          ? _value.itineraryId
          : itineraryId // ignore: cast_nullable_to_non_nullable
              as int,
      expendituresList: null == expendituresList
          ? _value.expendituresList
          : expendituresList // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Expenditure>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentBudgetImplCopyWith<$Res>
    implements $CurrentBudgetCopyWith<$Res> {
  factory _$$CurrentBudgetImplCopyWith(
          _$CurrentBudgetImpl value, $Res Function(_$CurrentBudgetImpl) then) =
      __$$CurrentBudgetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int budgetId,
      int totalAmount,
      int itineraryId,
      Map<String, List<Expenditure>> expendituresList});
}

/// @nodoc
class __$$CurrentBudgetImplCopyWithImpl<$Res>
    extends _$CurrentBudgetCopyWithImpl<$Res, _$CurrentBudgetImpl>
    implements _$$CurrentBudgetImplCopyWith<$Res> {
  __$$CurrentBudgetImplCopyWithImpl(
      _$CurrentBudgetImpl _value, $Res Function(_$CurrentBudgetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budgetId = null,
    Object? totalAmount = null,
    Object? itineraryId = null,
    Object? expendituresList = null,
  }) {
    return _then(_$CurrentBudgetImpl(
      budgetId: null == budgetId
          ? _value.budgetId
          : budgetId // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      itineraryId: null == itineraryId
          ? _value.itineraryId
          : itineraryId // ignore: cast_nullable_to_non_nullable
              as int,
      expendituresList: null == expendituresList
          ? _value._expendituresList
          : expendituresList // ignore: cast_nullable_to_non_nullable
              as Map<String, List<Expenditure>>,
    ));
  }
}

/// @nodoc

class _$CurrentBudgetImpl implements _CurrentBudget {
  _$CurrentBudgetImpl(
      {required this.budgetId,
      required this.totalAmount,
      required this.itineraryId,
      required final Map<String, List<Expenditure>> expendituresList})
      : _expendituresList = expendituresList;

  @override
  final int budgetId;
  @override
  final int totalAmount;
  @override
  final int itineraryId;
  final Map<String, List<Expenditure>> _expendituresList;
  @override
  Map<String, List<Expenditure>> get expendituresList {
    if (_expendituresList is EqualUnmodifiableMapView) return _expendituresList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_expendituresList);
  }

  @override
  String toString() {
    return 'CurrentBudget(budgetId: $budgetId, totalAmount: $totalAmount, itineraryId: $itineraryId, expendituresList: $expendituresList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentBudgetImpl &&
            (identical(other.budgetId, budgetId) ||
                other.budgetId == budgetId) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.itineraryId, itineraryId) ||
                other.itineraryId == itineraryId) &&
            const DeepCollectionEquality()
                .equals(other._expendituresList, _expendituresList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, budgetId, totalAmount,
      itineraryId, const DeepCollectionEquality().hash(_expendituresList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentBudgetImplCopyWith<_$CurrentBudgetImpl> get copyWith =>
      __$$CurrentBudgetImplCopyWithImpl<_$CurrentBudgetImpl>(this, _$identity);
}

abstract class _CurrentBudget implements CurrentBudget {
  factory _CurrentBudget(
          {required final int budgetId,
          required final int totalAmount,
          required final int itineraryId,
          required final Map<String, List<Expenditure>> expendituresList}) =
      _$CurrentBudgetImpl;

  @override
  int get budgetId;
  @override
  int get totalAmount;
  @override
  int get itineraryId;
  @override
  Map<String, List<Expenditure>> get expendituresList;
  @override
  @JsonKey(ignore: true)
  _$$CurrentBudgetImplCopyWith<_$CurrentBudgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Expenditure _$ExpenditureFromJson(Map<String, dynamic> json) {
  return _Expenditure.fromJson(json);
}

/// @nodoc
mixin _$Expenditure {
  int get id => throw _privateConstructorUsedError;
  int get place => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpenditureCopyWith<Expenditure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenditureCopyWith<$Res> {
  factory $ExpenditureCopyWith(
          Expenditure value, $Res Function(Expenditure) then) =
      _$ExpenditureCopyWithImpl<$Res, Expenditure>;
  @useResult
  $Res call(
      {int id,
      int place,
      int day,
      String paymentMethod,
      String category,
      String name,
      int amount});
}

/// @nodoc
class _$ExpenditureCopyWithImpl<$Res, $Val extends Expenditure>
    implements $ExpenditureCopyWith<$Res> {
  _$ExpenditureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? place = null,
    Object? day = null,
    Object? paymentMethod = null,
    Object? category = null,
    Object? name = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenditureImplCopyWith<$Res>
    implements $ExpenditureCopyWith<$Res> {
  factory _$$ExpenditureImplCopyWith(
          _$ExpenditureImpl value, $Res Function(_$ExpenditureImpl) then) =
      __$$ExpenditureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int place,
      int day,
      String paymentMethod,
      String category,
      String name,
      int amount});
}

/// @nodoc
class __$$ExpenditureImplCopyWithImpl<$Res>
    extends _$ExpenditureCopyWithImpl<$Res, _$ExpenditureImpl>
    implements _$$ExpenditureImplCopyWith<$Res> {
  __$$ExpenditureImplCopyWithImpl(
      _$ExpenditureImpl _value, $Res Function(_$ExpenditureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? place = null,
    Object? day = null,
    Object? paymentMethod = null,
    Object? category = null,
    Object? name = null,
    Object? amount = null,
  }) {
    return _then(_$ExpenditureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenditureImpl implements _Expenditure {
  _$ExpenditureImpl(
      {required this.id,
      required this.place,
      required this.day,
      required this.paymentMethod,
      required this.category,
      required this.name,
      required this.amount});

  factory _$ExpenditureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenditureImplFromJson(json);

  @override
  final int id;
  @override
  final int place;
  @override
  final int day;
  @override
  final String paymentMethod;
  @override
  final String category;
  @override
  final String name;
  @override
  final int amount;

  @override
  String toString() {
    return 'Expenditure(id: $id, place: $place, day: $day, paymentMethod: $paymentMethod, category: $category, name: $name, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenditureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, place, day, paymentMethod, category, name, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenditureImplCopyWith<_$ExpenditureImpl> get copyWith =>
      __$$ExpenditureImplCopyWithImpl<_$ExpenditureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpenditureImplToJson(
      this,
    );
  }
}

abstract class _Expenditure implements Expenditure {
  factory _Expenditure(
      {required final int id,
      required final int place,
      required final int day,
      required final String paymentMethod,
      required final String category,
      required final String name,
      required final int amount}) = _$ExpenditureImpl;

  factory _Expenditure.fromJson(Map<String, dynamic> json) =
      _$ExpenditureImpl.fromJson;

  @override
  int get id;
  @override
  int get place;
  @override
  int get day;
  @override
  String get paymentMethod;
  @override
  String get category;
  @override
  String get name;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$ExpenditureImplCopyWith<_$ExpenditureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
