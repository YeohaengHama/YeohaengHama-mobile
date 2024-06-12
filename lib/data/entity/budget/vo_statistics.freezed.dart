// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_statistics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Statistics _$StatisticsFromJson(Map<String, dynamic> json) {
  return _Statistics.fromJson(json);
}

/// @nodoc
mixin _$Statistics {
  Budget get budget => throw _privateConstructorUsedError;
  Individual get individual => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatisticsCopyWith<Statistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatisticsCopyWith<$Res> {
  factory $StatisticsCopyWith(
          Statistics value, $Res Function(Statistics) then) =
      _$StatisticsCopyWithImpl<$Res, Statistics>;
  @useResult
  $Res call({Budget budget, Individual individual});

  $BudgetCopyWith<$Res> get budget;
  $IndividualCopyWith<$Res> get individual;
}

/// @nodoc
class _$StatisticsCopyWithImpl<$Res, $Val extends Statistics>
    implements $StatisticsCopyWith<$Res> {
  _$StatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budget = null,
    Object? individual = null,
  }) {
    return _then(_value.copyWith(
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as Budget,
      individual: null == individual
          ? _value.individual
          : individual // ignore: cast_nullable_to_non_nullable
              as Individual,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BudgetCopyWith<$Res> get budget {
    return $BudgetCopyWith<$Res>(_value.budget, (value) {
      return _then(_value.copyWith(budget: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $IndividualCopyWith<$Res> get individual {
    return $IndividualCopyWith<$Res>(_value.individual, (value) {
      return _then(_value.copyWith(individual: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatisticsImplCopyWith<$Res>
    implements $StatisticsCopyWith<$Res> {
  factory _$$StatisticsImplCopyWith(
          _$StatisticsImpl value, $Res Function(_$StatisticsImpl) then) =
      __$$StatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Budget budget, Individual individual});

  @override
  $BudgetCopyWith<$Res> get budget;
  @override
  $IndividualCopyWith<$Res> get individual;
}

/// @nodoc
class __$$StatisticsImplCopyWithImpl<$Res>
    extends _$StatisticsCopyWithImpl<$Res, _$StatisticsImpl>
    implements _$$StatisticsImplCopyWith<$Res> {
  __$$StatisticsImplCopyWithImpl(
      _$StatisticsImpl _value, $Res Function(_$StatisticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? budget = null,
    Object? individual = null,
  }) {
    return _then(_$StatisticsImpl(
      budget: null == budget
          ? _value.budget
          : budget // ignore: cast_nullable_to_non_nullable
              as Budget,
      individual: null == individual
          ? _value.individual
          : individual // ignore: cast_nullable_to_non_nullable
              as Individual,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatisticsImpl implements _Statistics {
  const _$StatisticsImpl({required this.budget, required this.individual});

  factory _$StatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatisticsImplFromJson(json);

  @override
  final Budget budget;
  @override
  final Individual individual;

  @override
  String toString() {
    return 'Statistics(budget: $budget, individual: $individual)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatisticsImpl &&
            (identical(other.budget, budget) || other.budget == budget) &&
            (identical(other.individual, individual) ||
                other.individual == individual));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, budget, individual);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatisticsImplCopyWith<_$StatisticsImpl> get copyWith =>
      __$$StatisticsImplCopyWithImpl<_$StatisticsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatisticsImplToJson(
      this,
    );
  }
}

abstract class _Statistics implements Statistics {
  const factory _Statistics(
      {required final Budget budget,
      required final Individual individual}) = _$StatisticsImpl;

  factory _Statistics.fromJson(Map<String, dynamic> json) =
      _$StatisticsImpl.fromJson;

  @override
  Budget get budget;
  @override
  Individual get individual;
  @override
  @JsonKey(ignore: true)
  _$$StatisticsImplCopyWith<_$StatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Budget _$BudgetFromJson(Map<String, dynamic> json) {
  return _Budget.fromJson(json);
}

/// @nodoc
mixin _$Budget {
  Category get category => throw _privateConstructorUsedError;
  Amount get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BudgetCopyWith<Budget> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BudgetCopyWith<$Res> {
  factory $BudgetCopyWith(Budget value, $Res Function(Budget) then) =
      _$BudgetCopyWithImpl<$Res, Budget>;
  @useResult
  $Res call({Category category, Amount amount});

  $CategoryCopyWith<$Res> get category;
  $AmountCopyWith<$Res> get amount;
}

/// @nodoc
class _$BudgetCopyWithImpl<$Res, $Val extends Budget>
    implements $BudgetCopyWith<$Res> {
  _$BudgetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountCopyWith<$Res> get amount {
    return $AmountCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BudgetImplCopyWith<$Res> implements $BudgetCopyWith<$Res> {
  factory _$$BudgetImplCopyWith(
          _$BudgetImpl value, $Res Function(_$BudgetImpl) then) =
      __$$BudgetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Category category, Amount amount});

  @override
  $CategoryCopyWith<$Res> get category;
  @override
  $AmountCopyWith<$Res> get amount;
}

/// @nodoc
class __$$BudgetImplCopyWithImpl<$Res>
    extends _$BudgetCopyWithImpl<$Res, _$BudgetImpl>
    implements _$$BudgetImplCopyWith<$Res> {
  __$$BudgetImplCopyWithImpl(
      _$BudgetImpl _value, $Res Function(_$BudgetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? amount = null,
  }) {
    return _then(_$BudgetImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BudgetImpl implements _Budget {
  const _$BudgetImpl({required this.category, required this.amount});

  factory _$BudgetImpl.fromJson(Map<String, dynamic> json) =>
      _$$BudgetImplFromJson(json);

  @override
  final Category category;
  @override
  final Amount amount;

  @override
  String toString() {
    return 'Budget(category: $category, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BudgetImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BudgetImplCopyWith<_$BudgetImpl> get copyWith =>
      __$$BudgetImplCopyWithImpl<_$BudgetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BudgetImplToJson(
      this,
    );
  }
}

abstract class _Budget implements Budget {
  const factory _Budget(
      {required final Category category,
      required final Amount amount}) = _$BudgetImpl;

  factory _Budget.fromJson(Map<String, dynamic> json) = _$BudgetImpl.fromJson;

  @override
  Category get category;
  @override
  Amount get amount;
  @override
  @JsonKey(ignore: true)
  _$$BudgetImplCopyWith<_$BudgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Individual _$IndividualFromJson(Map<String, dynamic> json) {
  return _Individual.fromJson(json);
}

/// @nodoc
mixin _$Individual {
  Category get category => throw _privateConstructorUsedError;
  Amount get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IndividualCopyWith<Individual> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndividualCopyWith<$Res> {
  factory $IndividualCopyWith(
          Individual value, $Res Function(Individual) then) =
      _$IndividualCopyWithImpl<$Res, Individual>;
  @useResult
  $Res call({Category category, Amount amount});

  $CategoryCopyWith<$Res> get category;
  $AmountCopyWith<$Res> get amount;
}

/// @nodoc
class _$IndividualCopyWithImpl<$Res, $Val extends Individual>
    implements $IndividualCopyWith<$Res> {
  _$IndividualCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountCopyWith<$Res> get amount {
    return $AmountCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IndividualImplCopyWith<$Res>
    implements $IndividualCopyWith<$Res> {
  factory _$$IndividualImplCopyWith(
          _$IndividualImpl value, $Res Function(_$IndividualImpl) then) =
      __$$IndividualImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Category category, Amount amount});

  @override
  $CategoryCopyWith<$Res> get category;
  @override
  $AmountCopyWith<$Res> get amount;
}

/// @nodoc
class __$$IndividualImplCopyWithImpl<$Res>
    extends _$IndividualCopyWithImpl<$Res, _$IndividualImpl>
    implements _$$IndividualImplCopyWith<$Res> {
  __$$IndividualImplCopyWithImpl(
      _$IndividualImpl _value, $Res Function(_$IndividualImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? amount = null,
  }) {
    return _then(_$IndividualImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Amount,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IndividualImpl implements _Individual {
  const _$IndividualImpl({required this.category, required this.amount});

  factory _$IndividualImpl.fromJson(Map<String, dynamic> json) =>
      _$$IndividualImplFromJson(json);

  @override
  final Category category;
  @override
  final Amount amount;

  @override
  String toString() {
    return 'Individual(category: $category, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IndividualImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IndividualImplCopyWith<_$IndividualImpl> get copyWith =>
      __$$IndividualImplCopyWithImpl<_$IndividualImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IndividualImplToJson(
      this,
    );
  }
}

abstract class _Individual implements Individual {
  const factory _Individual(
      {required final Category category,
      required final Amount amount}) = _$IndividualImpl;

  factory _Individual.fromJson(Map<String, dynamic> json) =
      _$IndividualImpl.fromJson;

  @override
  Category get category;
  @override
  Amount get amount;
  @override
  @JsonKey(ignore: true)
  _$$IndividualImplCopyWith<_$IndividualImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  double get lodging => throw _privateConstructorUsedError;
  double get flight => throw _privateConstructorUsedError;
  double get traffic => throw _privateConstructorUsedError;
  double get tour => throw _privateConstructorUsedError;
  double get food => throw _privateConstructorUsedError;
  double get shopping => throw _privateConstructorUsedError;
  double get other => throw _privateConstructorUsedError;
  AmountDetail get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {double lodging,
      double flight,
      double traffic,
      double tour,
      double food,
      double shopping,
      double other,
      AmountDetail amount});

  $AmountDetailCopyWith<$Res> get amount;
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lodging = null,
    Object? flight = null,
    Object? traffic = null,
    Object? tour = null,
    Object? food = null,
    Object? shopping = null,
    Object? other = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      lodging: null == lodging
          ? _value.lodging
          : lodging // ignore: cast_nullable_to_non_nullable
              as double,
      flight: null == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as double,
      traffic: null == traffic
          ? _value.traffic
          : traffic // ignore: cast_nullable_to_non_nullable
              as double,
      tour: null == tour
          ? _value.tour
          : tour // ignore: cast_nullable_to_non_nullable
              as double,
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as double,
      shopping: null == shopping
          ? _value.shopping
          : shopping // ignore: cast_nullable_to_non_nullable
              as double,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountDetail,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AmountDetailCopyWith<$Res> get amount {
    return $AmountDetailCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double lodging,
      double flight,
      double traffic,
      double tour,
      double food,
      double shopping,
      double other,
      AmountDetail amount});

  @override
  $AmountDetailCopyWith<$Res> get amount;
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lodging = null,
    Object? flight = null,
    Object? traffic = null,
    Object? tour = null,
    Object? food = null,
    Object? shopping = null,
    Object? other = null,
    Object? amount = null,
  }) {
    return _then(_$CategoryImpl(
      lodging: null == lodging
          ? _value.lodging
          : lodging // ignore: cast_nullable_to_non_nullable
              as double,
      flight: null == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as double,
      traffic: null == traffic
          ? _value.traffic
          : traffic // ignore: cast_nullable_to_non_nullable
              as double,
      tour: null == tour
          ? _value.tour
          : tour // ignore: cast_nullable_to_non_nullable
              as double,
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as double,
      shopping: null == shopping
          ? _value.shopping
          : shopping // ignore: cast_nullable_to_non_nullable
              as double,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as AmountDetail,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {required this.lodging,
      required this.flight,
      required this.traffic,
      required this.tour,
      required this.food,
      required this.shopping,
      required this.other,
      required this.amount});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final double lodging;
  @override
  final double flight;
  @override
  final double traffic;
  @override
  final double tour;
  @override
  final double food;
  @override
  final double shopping;
  @override
  final double other;
  @override
  final AmountDetail amount;

  @override
  String toString() {
    return 'Category(lodging: $lodging, flight: $flight, traffic: $traffic, tour: $tour, food: $food, shopping: $shopping, other: $other, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.lodging, lodging) || other.lodging == lodging) &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.traffic, traffic) || other.traffic == traffic) &&
            (identical(other.tour, tour) || other.tour == tour) &&
            (identical(other.food, food) || other.food == food) &&
            (identical(other.shopping, shopping) ||
                other.shopping == shopping) &&
            (identical(other.other, this.other) || other.other == this.other) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lodging, flight, traffic, tour,
      food, shopping, other, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final double lodging,
      required final double flight,
      required final double traffic,
      required final double tour,
      required final double food,
      required final double shopping,
      required final double other,
      required final AmountDetail amount}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  double get lodging;
  @override
  double get flight;
  @override
  double get traffic;
  @override
  double get tour;
  @override
  double get food;
  @override
  double get shopping;
  @override
  double get other;
  @override
  AmountDetail get amount;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Amount _$AmountFromJson(Map<String, dynamic> json) {
  return _Amount.fromJson(json);
}

/// @nodoc
mixin _$Amount {
  double get lodging => throw _privateConstructorUsedError;
  double get flight => throw _privateConstructorUsedError;
  double get traffic => throw _privateConstructorUsedError;
  double get tour => throw _privateConstructorUsedError;
  double get food => throw _privateConstructorUsedError;
  double get shopping => throw _privateConstructorUsedError;
  double get other => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmountCopyWith<Amount> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountCopyWith<$Res> {
  factory $AmountCopyWith(Amount value, $Res Function(Amount) then) =
      _$AmountCopyWithImpl<$Res, Amount>;
  @useResult
  $Res call(
      {double lodging,
      double flight,
      double traffic,
      double tour,
      double food,
      double shopping,
      double other});
}

/// @nodoc
class _$AmountCopyWithImpl<$Res, $Val extends Amount>
    implements $AmountCopyWith<$Res> {
  _$AmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lodging = null,
    Object? flight = null,
    Object? traffic = null,
    Object? tour = null,
    Object? food = null,
    Object? shopping = null,
    Object? other = null,
  }) {
    return _then(_value.copyWith(
      lodging: null == lodging
          ? _value.lodging
          : lodging // ignore: cast_nullable_to_non_nullable
              as double,
      flight: null == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as double,
      traffic: null == traffic
          ? _value.traffic
          : traffic // ignore: cast_nullable_to_non_nullable
              as double,
      tour: null == tour
          ? _value.tour
          : tour // ignore: cast_nullable_to_non_nullable
              as double,
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as double,
      shopping: null == shopping
          ? _value.shopping
          : shopping // ignore: cast_nullable_to_non_nullable
              as double,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmountImplCopyWith<$Res> implements $AmountCopyWith<$Res> {
  factory _$$AmountImplCopyWith(
          _$AmountImpl value, $Res Function(_$AmountImpl) then) =
      __$$AmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double lodging,
      double flight,
      double traffic,
      double tour,
      double food,
      double shopping,
      double other});
}

/// @nodoc
class __$$AmountImplCopyWithImpl<$Res>
    extends _$AmountCopyWithImpl<$Res, _$AmountImpl>
    implements _$$AmountImplCopyWith<$Res> {
  __$$AmountImplCopyWithImpl(
      _$AmountImpl _value, $Res Function(_$AmountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lodging = null,
    Object? flight = null,
    Object? traffic = null,
    Object? tour = null,
    Object? food = null,
    Object? shopping = null,
    Object? other = null,
  }) {
    return _then(_$AmountImpl(
      lodging: null == lodging
          ? _value.lodging
          : lodging // ignore: cast_nullable_to_non_nullable
              as double,
      flight: null == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as double,
      traffic: null == traffic
          ? _value.traffic
          : traffic // ignore: cast_nullable_to_non_nullable
              as double,
      tour: null == tour
          ? _value.tour
          : tour // ignore: cast_nullable_to_non_nullable
              as double,
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as double,
      shopping: null == shopping
          ? _value.shopping
          : shopping // ignore: cast_nullable_to_non_nullable
              as double,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AmountImpl implements _Amount {
  const _$AmountImpl(
      {required this.lodging,
      required this.flight,
      required this.traffic,
      required this.tour,
      required this.food,
      required this.shopping,
      required this.other});

  factory _$AmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmountImplFromJson(json);

  @override
  final double lodging;
  @override
  final double flight;
  @override
  final double traffic;
  @override
  final double tour;
  @override
  final double food;
  @override
  final double shopping;
  @override
  final double other;

  @override
  String toString() {
    return 'Amount(lodging: $lodging, flight: $flight, traffic: $traffic, tour: $tour, food: $food, shopping: $shopping, other: $other)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountImpl &&
            (identical(other.lodging, lodging) || other.lodging == lodging) &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.traffic, traffic) || other.traffic == traffic) &&
            (identical(other.tour, tour) || other.tour == tour) &&
            (identical(other.food, food) || other.food == food) &&
            (identical(other.shopping, shopping) ||
                other.shopping == shopping) &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, lodging, flight, traffic, tour, food, shopping, other);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountImplCopyWith<_$AmountImpl> get copyWith =>
      __$$AmountImplCopyWithImpl<_$AmountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AmountImplToJson(
      this,
    );
  }
}

abstract class _Amount implements Amount {
  const factory _Amount(
      {required final double lodging,
      required final double flight,
      required final double traffic,
      required final double tour,
      required final double food,
      required final double shopping,
      required final double other}) = _$AmountImpl;

  factory _Amount.fromJson(Map<String, dynamic> json) = _$AmountImpl.fromJson;

  @override
  double get lodging;
  @override
  double get flight;
  @override
  double get traffic;
  @override
  double get tour;
  @override
  double get food;
  @override
  double get shopping;
  @override
  double get other;
  @override
  @JsonKey(ignore: true)
  _$$AmountImplCopyWith<_$AmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AmountDetail _$AmountDetailFromJson(Map<String, dynamic> json) {
  return _AmountDetail.fromJson(json);
}

/// @nodoc
mixin _$AmountDetail {
  double get lodging => throw _privateConstructorUsedError;
  double get flight => throw _privateConstructorUsedError;
  double get traffic => throw _privateConstructorUsedError;
  double get tour => throw _privateConstructorUsedError;
  double get food => throw _privateConstructorUsedError;
  double get shopping => throw _privateConstructorUsedError;
  double get other => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmountDetailCopyWith<AmountDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountDetailCopyWith<$Res> {
  factory $AmountDetailCopyWith(
          AmountDetail value, $Res Function(AmountDetail) then) =
      _$AmountDetailCopyWithImpl<$Res, AmountDetail>;
  @useResult
  $Res call(
      {double lodging,
      double flight,
      double traffic,
      double tour,
      double food,
      double shopping,
      double other});
}

/// @nodoc
class _$AmountDetailCopyWithImpl<$Res, $Val extends AmountDetail>
    implements $AmountDetailCopyWith<$Res> {
  _$AmountDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lodging = null,
    Object? flight = null,
    Object? traffic = null,
    Object? tour = null,
    Object? food = null,
    Object? shopping = null,
    Object? other = null,
  }) {
    return _then(_value.copyWith(
      lodging: null == lodging
          ? _value.lodging
          : lodging // ignore: cast_nullable_to_non_nullable
              as double,
      flight: null == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as double,
      traffic: null == traffic
          ? _value.traffic
          : traffic // ignore: cast_nullable_to_non_nullable
              as double,
      tour: null == tour
          ? _value.tour
          : tour // ignore: cast_nullable_to_non_nullable
              as double,
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as double,
      shopping: null == shopping
          ? _value.shopping
          : shopping // ignore: cast_nullable_to_non_nullable
              as double,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AmountDetailImplCopyWith<$Res>
    implements $AmountDetailCopyWith<$Res> {
  factory _$$AmountDetailImplCopyWith(
          _$AmountDetailImpl value, $Res Function(_$AmountDetailImpl) then) =
      __$$AmountDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double lodging,
      double flight,
      double traffic,
      double tour,
      double food,
      double shopping,
      double other});
}

/// @nodoc
class __$$AmountDetailImplCopyWithImpl<$Res>
    extends _$AmountDetailCopyWithImpl<$Res, _$AmountDetailImpl>
    implements _$$AmountDetailImplCopyWith<$Res> {
  __$$AmountDetailImplCopyWithImpl(
      _$AmountDetailImpl _value, $Res Function(_$AmountDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lodging = null,
    Object? flight = null,
    Object? traffic = null,
    Object? tour = null,
    Object? food = null,
    Object? shopping = null,
    Object? other = null,
  }) {
    return _then(_$AmountDetailImpl(
      lodging: null == lodging
          ? _value.lodging
          : lodging // ignore: cast_nullable_to_non_nullable
              as double,
      flight: null == flight
          ? _value.flight
          : flight // ignore: cast_nullable_to_non_nullable
              as double,
      traffic: null == traffic
          ? _value.traffic
          : traffic // ignore: cast_nullable_to_non_nullable
              as double,
      tour: null == tour
          ? _value.tour
          : tour // ignore: cast_nullable_to_non_nullable
              as double,
      food: null == food
          ? _value.food
          : food // ignore: cast_nullable_to_non_nullable
              as double,
      shopping: null == shopping
          ? _value.shopping
          : shopping // ignore: cast_nullable_to_non_nullable
              as double,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AmountDetailImpl implements _AmountDetail {
  const _$AmountDetailImpl(
      {required this.lodging,
      required this.flight,
      required this.traffic,
      required this.tour,
      required this.food,
      required this.shopping,
      required this.other});

  factory _$AmountDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$AmountDetailImplFromJson(json);

  @override
  final double lodging;
  @override
  final double flight;
  @override
  final double traffic;
  @override
  final double tour;
  @override
  final double food;
  @override
  final double shopping;
  @override
  final double other;

  @override
  String toString() {
    return 'AmountDetail(lodging: $lodging, flight: $flight, traffic: $traffic, tour: $tour, food: $food, shopping: $shopping, other: $other)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountDetailImpl &&
            (identical(other.lodging, lodging) || other.lodging == lodging) &&
            (identical(other.flight, flight) || other.flight == flight) &&
            (identical(other.traffic, traffic) || other.traffic == traffic) &&
            (identical(other.tour, tour) || other.tour == tour) &&
            (identical(other.food, food) || other.food == food) &&
            (identical(other.shopping, shopping) ||
                other.shopping == shopping) &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, lodging, flight, traffic, tour, food, shopping, other);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountDetailImplCopyWith<_$AmountDetailImpl> get copyWith =>
      __$$AmountDetailImplCopyWithImpl<_$AmountDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AmountDetailImplToJson(
      this,
    );
  }
}

abstract class _AmountDetail implements AmountDetail {
  const factory _AmountDetail(
      {required final double lodging,
      required final double flight,
      required final double traffic,
      required final double tour,
      required final double food,
      required final double shopping,
      required final double other}) = _$AmountDetailImpl;

  factory _AmountDetail.fromJson(Map<String, dynamic> json) =
      _$AmountDetailImpl.fromJson;

  @override
  double get lodging;
  @override
  double get flight;
  @override
  double get traffic;
  @override
  double get tour;
  @override
  double get food;
  @override
  double get shopping;
  @override
  double get other;
  @override
  @JsonKey(ignore: true)
  _$$AmountDetailImplCopyWith<_$AmountDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
