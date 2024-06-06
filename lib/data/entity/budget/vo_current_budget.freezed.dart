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
  Account get account => throw _privateConstructorUsedError;
  Place get place => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
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
      Account account,
      Place place,
      int day,
      String paymentMethod,
      String category,
      String content,
      String? name,
      int amount});

  $AccountCopyWith<$Res> get account;
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
    Object? account = null,
    Object? place = null,
    Object? day = null,
    Object? paymentMethod = null,
    Object? category = null,
    Object? content = null,
    Object? name = freezed,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
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
      Account account,
      Place place,
      int day,
      String paymentMethod,
      String category,
      String content,
      String? name,
      int amount});

  @override
  $AccountCopyWith<$Res> get account;
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
    Object? account = null,
    Object? place = null,
    Object? day = null,
    Object? paymentMethod = null,
    Object? category = null,
    Object? content = null,
    Object? name = freezed,
    Object? amount = null,
  }) {
    return _then(_$ExpenditureImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
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
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
      required this.account,
      required this.place,
      required this.day,
      required this.paymentMethod,
      required this.category,
      required this.content,
      this.name,
      required this.amount});

  factory _$ExpenditureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpenditureImplFromJson(json);

  @override
  final int id;
  @override
  final Account account;
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
  final String? name;
  @override
  final int amount;

  @override
  String toString() {
    return 'Expenditure(id: $id, account: $account, place: $place, day: $day, paymentMethod: $paymentMethod, category: $category, content: $content, name: $name, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenditureImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, account, place, day,
      paymentMethod, category, content, name, amount);

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
      required final Account account,
      required final Place place,
      required final int day,
      required final String paymentMethod,
      required final String category,
      required final String content,
      final String? name,
      required final int amount}) = _$ExpenditureImpl;

  factory _Expenditure.fromJson(Map<String, dynamic> json) =
      _$ExpenditureImpl.fromJson;

  @override
  int get id;
  @override
  Account get account;
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
  String? get name;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$ExpenditureImplCopyWith<_$ExpenditureImpl> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call({int id, String nickname, String? photoUrl});
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
  $Res call({int id, String nickname, String? photoUrl});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountImpl implements _Account {
  const _$AccountImpl(
      {required this.id, required this.nickname, this.photoUrl});

  factory _$AccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountImplFromJson(json);

  @override
  final int id;
  @override
  final String nickname;
  @override
  final String? photoUrl;

  @override
  String toString() {
    return 'Account(id: $id, nickname: $nickname, photoUrl: $photoUrl)';
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
                other.photoUrl == photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, nickname, photoUrl);

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
      final String? photoUrl}) = _$AccountImpl;

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

  @override
  int get id;
  @override
  String get nickname;
  @override
  String? get photoUrl;
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
