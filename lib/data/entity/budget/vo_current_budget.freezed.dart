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
  Map<int, List<Expenditure>> get expenditures =>
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
      Map<int, List<Expenditure>> expenditures});
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
    Object? expenditures = null,
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
      expenditures: null == expenditures
          ? _value.expenditures
          : expenditures // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Expenditure>>,
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
      Map<int, List<Expenditure>> expenditures});
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
    Object? expenditures = null,
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
      expenditures: null == expenditures
          ? _value._expenditures
          : expenditures // ignore: cast_nullable_to_non_nullable
              as Map<int, List<Expenditure>>,
    ));
  }
}

/// @nodoc

class _$CurrentBudgetImpl implements _CurrentBudget {
  _$CurrentBudgetImpl(
      {required this.budgetId,
      required this.totalAmount,
      required this.itineraryId,
      required final Map<int, List<Expenditure>> expenditures})
      : _expenditures = expenditures;

  @override
  final int budgetId;
  @override
  final int totalAmount;
  @override
  final int itineraryId;
  final Map<int, List<Expenditure>> _expenditures;
  @override
  Map<int, List<Expenditure>> get expenditures {
    if (_expenditures is EqualUnmodifiableMapView) return _expenditures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_expenditures);
  }

  @override
  String toString() {
    return 'CurrentBudget(budgetId: $budgetId, totalAmount: $totalAmount, itineraryId: $itineraryId, expenditures: $expenditures)';
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
                .equals(other._expenditures, _expenditures));
  }

  @override
  int get hashCode => Object.hash(runtimeType, budgetId, totalAmount,
      itineraryId, const DeepCollectionEquality().hash(_expenditures));

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
          required final Map<int, List<Expenditure>> expenditures}) =
      _$CurrentBudgetImpl;

  @override
  int get budgetId;
  @override
  int get totalAmount;
  @override
  int get itineraryId;
  @override
  Map<int, List<Expenditure>> get expenditures;
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
  int get expendituresTotalAmount => throw _privateConstructorUsedError;
  Place get place => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  bool get individual => throw _privateConstructorUsedError;
  List<Calculation> get calculate => throw _privateConstructorUsedError;

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
      int expendituresTotalAmount,
      Place place,
      int day,
      String paymentMethod,
      String category,
      String content,
      bool individual,
      List<Calculation> calculate});

  $PlaceCopyWith<$Res> get place;
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
    Object? expendituresTotalAmount = null,
    Object? place = null,
    Object? day = null,
    Object? paymentMethod = null,
    Object? category = null,
    Object? content = null,
    Object? individual = null,
    Object? calculate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      expendituresTotalAmount: null == expendituresTotalAmount
          ? _value.expendituresTotalAmount
          : expendituresTotalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      individual: null == individual
          ? _value.individual
          : individual // ignore: cast_nullable_to_non_nullable
              as bool,
      calculate: null == calculate
          ? _value.calculate
          : calculate // ignore: cast_nullable_to_non_nullable
              as List<Calculation>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res> get place {
    return $PlaceCopyWith<$Res>(_value.place, (value) {
      return _then(_value.copyWith(place: value) as $Val);
    });
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
      int expendituresTotalAmount,
      Place place,
      int day,
      String paymentMethod,
      String category,
      String content,
      bool individual,
      List<Calculation> calculate});

  @override
  $PlaceCopyWith<$Res> get place;
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
    Object? expendituresTotalAmount = null,
    Object? place = null,
    Object? day = null,
    Object? paymentMethod = null,
    Object? category = null,
    Object? content = null,
    Object? individual = null,
    Object? calculate = null,
  }) {
    return _then(_$ExpenditureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      expendituresTotalAmount: null == expendituresTotalAmount
          ? _value.expendituresTotalAmount
          : expendituresTotalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      individual: null == individual
          ? _value.individual
          : individual // ignore: cast_nullable_to_non_nullable
              as bool,
      calculate: null == calculate
          ? _value._calculate
          : calculate // ignore: cast_nullable_to_non_nullable
              as List<Calculation>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpenditureImpl implements _Expenditure {
  _$ExpenditureImpl(
      {required this.id,
      required this.expendituresTotalAmount,
      required this.place,
      required this.day,
      required this.paymentMethod,
      required this.category,
      required this.content,
      required this.individual,
      required final List<Calculation> calculate})
      : _calculate = calculate;

  factory _$ExpenditureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenditureImplFromJson(json);

  @override
  final int id;
  @override
  final int expendituresTotalAmount;
  @override
  final Place place;
  @override
  final int day;
  @override
  final String paymentMethod;
  @override
  final String category;
  @override
  final String content;
  @override
  final bool individual;
  final List<Calculation> _calculate;
  @override
  List<Calculation> get calculate {
    if (_calculate is EqualUnmodifiableListView) return _calculate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_calculate);
  }

  @override
  String toString() {
    return 'Expenditure(id: $id, expendituresTotalAmount: $expendituresTotalAmount, place: $place, day: $day, paymentMethod: $paymentMethod, category: $category, content: $content, individual: $individual, calculate: $calculate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenditureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(
                    other.expendituresTotalAmount, expendituresTotalAmount) ||
                other.expendituresTotalAmount == expendituresTotalAmount) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.individual, individual) ||
                other.individual == individual) &&
            const DeepCollectionEquality()
                .equals(other._calculate, _calculate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      expendituresTotalAmount,
      place,
      day,
      paymentMethod,
      category,
      content,
      individual,
      const DeepCollectionEquality().hash(_calculate));

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
      required final int expendituresTotalAmount,
      required final Place place,
      required final int day,
      required final String paymentMethod,
      required final String category,
      required final String content,
      required final bool individual,
      required final List<Calculation> calculate}) = _$ExpenditureImpl;

  factory _Expenditure.fromJson(Map<String, dynamic> json) =
      _$ExpenditureImpl.fromJson;

  @override
  int get id;
  @override
  int get expendituresTotalAmount;
  @override
  Place get place;
  @override
  int get day;
  @override
  String get paymentMethod;
  @override
  String get category;
  @override
  String get content;
  @override
  bool get individual;
  @override
  List<Calculation> get calculate;
  @override
  @JsonKey(ignore: true)
  _$$ExpenditureImplCopyWith<_$ExpenditureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Calculation _$CalculationFromJson(Map<String, dynamic> json) {
  return _Calculation.fromJson(json);
}

/// @nodoc
mixin _$Calculation {
  int get id => throw _privateConstructorUsedError;
  Account get accountShowDTO => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalculationCopyWith<Calculation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculationCopyWith<$Res> {
  factory $CalculationCopyWith(
          Calculation value, $Res Function(Calculation) then) =
      _$CalculationCopyWithImpl<$Res, Calculation>;
  @useResult
  $Res call({int id, Account accountShowDTO, int amount});

  $AccountCopyWith<$Res> get accountShowDTO;
}

/// @nodoc
class _$CalculationCopyWithImpl<$Res, $Val extends Calculation>
    implements $CalculationCopyWith<$Res> {
  _$CalculationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountShowDTO = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountShowDTO: null == accountShowDTO
          ? _value.accountShowDTO
          : accountShowDTO // ignore: cast_nullable_to_non_nullable
              as Account,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get accountShowDTO {
    return $AccountCopyWith<$Res>(_value.accountShowDTO, (value) {
      return _then(_value.copyWith(accountShowDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CalculationImplCopyWith<$Res>
    implements $CalculationCopyWith<$Res> {
  factory _$$CalculationImplCopyWith(
          _$CalculationImpl value, $Res Function(_$CalculationImpl) then) =
      __$$CalculationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Account accountShowDTO, int amount});

  @override
  $AccountCopyWith<$Res> get accountShowDTO;
}

/// @nodoc
class __$$CalculationImplCopyWithImpl<$Res>
    extends _$CalculationCopyWithImpl<$Res, _$CalculationImpl>
    implements _$$CalculationImplCopyWith<$Res> {
  __$$CalculationImplCopyWithImpl(
      _$CalculationImpl _value, $Res Function(_$CalculationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountShowDTO = null,
    Object? amount = null,
  }) {
    return _then(_$CalculationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountShowDTO: null == accountShowDTO
          ? _value.accountShowDTO
          : accountShowDTO // ignore: cast_nullable_to_non_nullable
              as Account,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CalculationImpl implements _Calculation {
  _$CalculationImpl(
      {required this.id, required this.accountShowDTO, required this.amount});

  factory _$CalculationImpl.fromJson(Map<String, dynamic> json) =>
      _$$CalculationImplFromJson(json);

  @override
  final int id;
  @override
  final Account accountShowDTO;
  @override
  final int amount;

  @override
  String toString() {
    return 'Calculation(id: $id, accountShowDTO: $accountShowDTO, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalculationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountShowDTO, accountShowDTO) ||
                other.accountShowDTO == accountShowDTO) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, accountShowDTO, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalculationImplCopyWith<_$CalculationImpl> get copyWith =>
      __$$CalculationImplCopyWithImpl<_$CalculationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CalculationImplToJson(
      this,
    );
  }
}

abstract class _Calculation implements Calculation {
  factory _Calculation(
      {required final int id,
      required final Account accountShowDTO,
      required final int amount}) = _$CalculationImpl;

  factory _Calculation.fromJson(Map<String, dynamic> json) =
      _$CalculationImpl.fromJson;

  @override
  int get id;
  @override
  Account get accountShowDTO;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$CalculationImplCopyWith<_$CalculationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  int get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get accountRole => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call({int id, String nickname, String? photoUrl, String? accountRole});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? photoUrl = freezed,
    Object? accountRole = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      accountRole: freezed == accountRole
          ? _value.accountRole
          : accountRole // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
          _$AccountImpl value, $Res Function(_$AccountImpl) then) =
      __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nickname, String? photoUrl, String? accountRole});
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? photoUrl = freezed,
    Object? accountRole = freezed,
  }) {
    return _then(_$AccountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      accountRole: freezed == accountRole
          ? _value.accountRole
          : accountRole // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountImpl implements _Account {
  const _$AccountImpl(
      {required this.id,
      required this.nickname,
      this.photoUrl,
      this.accountRole});

  factory _$AccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountImplFromJson(json);

  @override
  final int id;
  @override
  final String nickname;
  @override
  final String? photoUrl;
  @override
  final String? accountRole;

  @override
  String toString() {
    return 'Account(id: $id, nickname: $nickname, photoUrl: $photoUrl, accountRole: $accountRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.accountRole, accountRole) ||
                other.accountRole == accountRole));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nickname, photoUrl, accountRole);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountImplToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  const factory _Account(
      {required final int id,
      required final String nickname,
      final String? photoUrl,
      final String? accountRole}) = _$AccountImpl;

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

  @override
  int get id;
  @override
  String get nickname;
  @override
  String? get photoUrl;
  @override
  String? get accountRole;
  @override
  @JsonKey(ignore: true)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  int get id => throw _privateConstructorUsedError;
  String get placeName => throw _privateConstructorUsedError;
  String get placeNum => throw _privateConstructorUsedError;
  String get placeType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call({int id, String placeName, String placeNum, String placeType});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? placeName = null,
    Object? placeNum = null,
    Object? placeType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      placeNum: null == placeNum
          ? _value.placeNum
          : placeNum // ignore: cast_nullable_to_non_nullable
              as String,
      placeType: null == placeType
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceImplCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$PlaceImplCopyWith(
          _$PlaceImpl value, $Res Function(_$PlaceImpl) then) =
      __$$PlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String placeName, String placeNum, String placeType});
}

/// @nodoc
class __$$PlaceImplCopyWithImpl<$Res>
    extends _$PlaceCopyWithImpl<$Res, _$PlaceImpl>
    implements _$$PlaceImplCopyWith<$Res> {
  __$$PlaceImplCopyWithImpl(
      _$PlaceImpl _value, $Res Function(_$PlaceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? placeName = null,
    Object? placeNum = null,
    Object? placeType = null,
  }) {
    return _then(_$PlaceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      placeName: null == placeName
          ? _value.placeName
          : placeName // ignore: cast_nullable_to_non_nullable
              as String,
      placeNum: null == placeNum
          ? _value.placeNum
          : placeNum // ignore: cast_nullable_to_non_nullable
              as String,
      placeType: null == placeType
          ? _value.placeType
          : placeType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceImpl implements _Place {
  const _$PlaceImpl(
      {required this.id,
      required this.placeName,
      required this.placeNum,
      required this.placeType});

  factory _$PlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceImplFromJson(json);

  @override
  final int id;
  @override
  final String placeName;
  @override
  final String placeNum;
  @override
  final String placeType;

  @override
  String toString() {
    return 'Place(id: $id, placeName: $placeName, placeNum: $placeNum, placeType: $placeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.placeName, placeName) ||
                other.placeName == placeName) &&
            (identical(other.placeNum, placeNum) ||
                other.placeNum == placeNum) &&
            (identical(other.placeType, placeType) ||
                other.placeType == placeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, placeName, placeNum, placeType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      __$$PlaceImplCopyWithImpl<_$PlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceImplToJson(
      this,
    );
  }
}

abstract class _Place implements Place {
  const factory _Place(
      {required final int id,
      required final String placeName,
      required final String placeNum,
      required final String placeType}) = _$PlaceImpl;

  factory _Place.fromJson(Map<String, dynamic> json) = _$PlaceImpl.fromJson;

  @override
  int get id;
  @override
  String get placeName;
  @override
  String get placeNum;
  @override
  String get placeType;
  @override
  @JsonKey(ignore: true)
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
