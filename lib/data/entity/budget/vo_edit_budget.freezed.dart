// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_edit_budget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditBudget _$EditBudgetFromJson(Map<String, dynamic> json) {
  return _EditBudget.fromJson(json);
}

/// @nodoc
mixin _$EditBudget {
  int get expendituresId => throw _privateConstructorUsedError;
  int get budgetId => throw _privateConstructorUsedError;
  int get totalAmount => throw _privateConstructorUsedError;
  PayerId get payerId => throw _privateConstructorUsedError;
  bool get divided => throw _privateConstructorUsedError;
  List<AccountId> get accountId => throw _privateConstructorUsedError;
  List<int> get amount => throw _privateConstructorUsedError;
  Place get place => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  bool get individual => throw _privateConstructorUsedError;

  /// Serializes this EditBudget to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditBudget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditBudgetCopyWith<EditBudget> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditBudgetCopyWith<$Res> {
  factory $EditBudgetCopyWith(
          EditBudget value, $Res Function(EditBudget) then) =
      _$EditBudgetCopyWithImpl<$Res, EditBudget>;
  @useResult
  $Res call(
      {int expendituresId,
      int budgetId,
      int totalAmount,
      PayerId payerId,
      bool divided,
      List<AccountId> accountId,
      List<int> amount,
      Place place,
      int day,
      String paymentMethod,
      String content,
      String category,
      bool individual});

  $PayerIdCopyWith<$Res> get payerId;
  $PlaceCopyWith<$Res> get place;
}

/// @nodoc
class _$EditBudgetCopyWithImpl<$Res, $Val extends EditBudget>
    implements $EditBudgetCopyWith<$Res> {
  _$EditBudgetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditBudget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expendituresId = null,
    Object? budgetId = null,
    Object? totalAmount = null,
    Object? payerId = null,
    Object? divided = null,
    Object? accountId = null,
    Object? amount = null,
    Object? place = null,
    Object? day = null,
    Object? paymentMethod = null,
    Object? content = null,
    Object? category = null,
    Object? individual = null,
  }) {
    return _then(_value.copyWith(
      expendituresId: null == expendituresId
          ? _value.expendituresId
          : expendituresId // ignore: cast_nullable_to_non_nullable
              as int,
      budgetId: null == budgetId
          ? _value.budgetId
          : budgetId // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      payerId: null == payerId
          ? _value.payerId
          : payerId // ignore: cast_nullable_to_non_nullable
              as PayerId,
      divided: null == divided
          ? _value.divided
          : divided // ignore: cast_nullable_to_non_nullable
              as bool,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as List<AccountId>,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as List<int>,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      individual: null == individual
          ? _value.individual
          : individual // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of EditBudget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PayerIdCopyWith<$Res> get payerId {
    return $PayerIdCopyWith<$Res>(_value.payerId, (value) {
      return _then(_value.copyWith(payerId: value) as $Val);
    });
  }

  /// Create a copy of EditBudget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlaceCopyWith<$Res> get place {
    return $PlaceCopyWith<$Res>(_value.place, (value) {
      return _then(_value.copyWith(place: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EditBudgetImplCopyWith<$Res>
    implements $EditBudgetCopyWith<$Res> {
  factory _$$EditBudgetImplCopyWith(
          _$EditBudgetImpl value, $Res Function(_$EditBudgetImpl) then) =
      __$$EditBudgetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int expendituresId,
      int budgetId,
      int totalAmount,
      PayerId payerId,
      bool divided,
      List<AccountId> accountId,
      List<int> amount,
      Place place,
      int day,
      String paymentMethod,
      String content,
      String category,
      bool individual});

  @override
  $PayerIdCopyWith<$Res> get payerId;
  @override
  $PlaceCopyWith<$Res> get place;
}

/// @nodoc
class __$$EditBudgetImplCopyWithImpl<$Res>
    extends _$EditBudgetCopyWithImpl<$Res, _$EditBudgetImpl>
    implements _$$EditBudgetImplCopyWith<$Res> {
  __$$EditBudgetImplCopyWithImpl(
      _$EditBudgetImpl _value, $Res Function(_$EditBudgetImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditBudget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? expendituresId = null,
    Object? budgetId = null,
    Object? totalAmount = null,
    Object? payerId = null,
    Object? divided = null,
    Object? accountId = null,
    Object? amount = null,
    Object? place = null,
    Object? day = null,
    Object? paymentMethod = null,
    Object? content = null,
    Object? category = null,
    Object? individual = null,
  }) {
    return _then(_$EditBudgetImpl(
      expendituresId: null == expendituresId
          ? _value.expendituresId
          : expendituresId // ignore: cast_nullable_to_non_nullable
              as int,
      budgetId: null == budgetId
          ? _value.budgetId
          : budgetId // ignore: cast_nullable_to_non_nullable
              as int,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as int,
      payerId: null == payerId
          ? _value.payerId
          : payerId // ignore: cast_nullable_to_non_nullable
              as PayerId,
      divided: null == divided
          ? _value.divided
          : divided // ignore: cast_nullable_to_non_nullable
              as bool,
      accountId: null == accountId
          ? _value._accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as List<AccountId>,
      amount: null == amount
          ? _value._amount
          : amount // ignore: cast_nullable_to_non_nullable
              as List<int>,
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
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      individual: null == individual
          ? _value.individual
          : individual // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditBudgetImpl implements _EditBudget {
  const _$EditBudgetImpl(
      {required this.expendituresId,
      required this.budgetId,
      required this.totalAmount,
      required this.payerId,
      required this.divided,
      required final List<AccountId> accountId,
      required final List<int> amount,
      required this.place,
      required this.day,
      required this.paymentMethod,
      required this.content,
      required this.category,
      required this.individual})
      : _accountId = accountId,
        _amount = amount;

  factory _$EditBudgetImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditBudgetImplFromJson(json);

  @override
  final int expendituresId;
  @override
  final int budgetId;
  @override
  final int totalAmount;
  @override
  final PayerId payerId;
  @override
  final bool divided;
  final List<AccountId> _accountId;
  @override
  List<AccountId> get accountId {
    if (_accountId is EqualUnmodifiableListView) return _accountId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accountId);
  }

  final List<int> _amount;
  @override
  List<int> get amount {
    if (_amount is EqualUnmodifiableListView) return _amount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_amount);
  }

  @override
  final Place place;
  @override
  final int day;
  @override
  final String paymentMethod;
  @override
  final String content;
  @override
  final String category;
  @override
  final bool individual;

  @override
  String toString() {
    return 'EditBudget(expendituresId: $expendituresId, budgetId: $budgetId, totalAmount: $totalAmount, payerId: $payerId, divided: $divided, accountId: $accountId, amount: $amount, place: $place, day: $day, paymentMethod: $paymentMethod, content: $content, category: $category, individual: $individual)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditBudgetImpl &&
            (identical(other.expendituresId, expendituresId) ||
                other.expendituresId == expendituresId) &&
            (identical(other.budgetId, budgetId) ||
                other.budgetId == budgetId) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.payerId, payerId) || other.payerId == payerId) &&
            (identical(other.divided, divided) || other.divided == divided) &&
            const DeepCollectionEquality()
                .equals(other._accountId, _accountId) &&
            const DeepCollectionEquality().equals(other._amount, _amount) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.individual, individual) ||
                other.individual == individual));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      expendituresId,
      budgetId,
      totalAmount,
      payerId,
      divided,
      const DeepCollectionEquality().hash(_accountId),
      const DeepCollectionEquality().hash(_amount),
      place,
      day,
      paymentMethod,
      content,
      category,
      individual);

  /// Create a copy of EditBudget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditBudgetImplCopyWith<_$EditBudgetImpl> get copyWith =>
      __$$EditBudgetImplCopyWithImpl<_$EditBudgetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditBudgetImplToJson(
      this,
    );
  }
}

abstract class _EditBudget implements EditBudget {
  const factory _EditBudget(
      {required final int expendituresId,
      required final int budgetId,
      required final int totalAmount,
      required final PayerId payerId,
      required final bool divided,
      required final List<AccountId> accountId,
      required final List<int> amount,
      required final Place place,
      required final int day,
      required final String paymentMethod,
      required final String content,
      required final String category,
      required final bool individual}) = _$EditBudgetImpl;

  factory _EditBudget.fromJson(Map<String, dynamic> json) =
      _$EditBudgetImpl.fromJson;

  @override
  int get expendituresId;
  @override
  int get budgetId;
  @override
  int get totalAmount;
  @override
  PayerId get payerId;
  @override
  bool get divided;
  @override
  List<AccountId> get accountId;
  @override
  List<int> get amount;
  @override
  Place get place;
  @override
  int get day;
  @override
  String get paymentMethod;
  @override
  String get content;
  @override
  String get category;
  @override
  bool get individual;

  /// Create a copy of EditBudget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditBudgetImplCopyWith<_$EditBudgetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayerId _$PayerIdFromJson(Map<String, dynamic> json) {
  return _PayerId.fromJson(json);
}

/// @nodoc
mixin _$PayerId {
  int get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  String get accountRole => throw _privateConstructorUsedError;

  /// Serializes this PayerId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PayerId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PayerIdCopyWith<PayerId> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayerIdCopyWith<$Res> {
  factory $PayerIdCopyWith(PayerId value, $Res Function(PayerId) then) =
      _$PayerIdCopyWithImpl<$Res, PayerId>;
  @useResult
  $Res call({int id, String nickname, String photoUrl, String accountRole});
}

/// @nodoc
class _$PayerIdCopyWithImpl<$Res, $Val extends PayerId>
    implements $PayerIdCopyWith<$Res> {
  _$PayerIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PayerId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? photoUrl = null,
    Object? accountRole = null,
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
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      accountRole: null == accountRole
          ? _value.accountRole
          : accountRole // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayerIdImplCopyWith<$Res> implements $PayerIdCopyWith<$Res> {
  factory _$$PayerIdImplCopyWith(
          _$PayerIdImpl value, $Res Function(_$PayerIdImpl) then) =
      __$$PayerIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nickname, String photoUrl, String accountRole});
}

/// @nodoc
class __$$PayerIdImplCopyWithImpl<$Res>
    extends _$PayerIdCopyWithImpl<$Res, _$PayerIdImpl>
    implements _$$PayerIdImplCopyWith<$Res> {
  __$$PayerIdImplCopyWithImpl(
      _$PayerIdImpl _value, $Res Function(_$PayerIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of PayerId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? photoUrl = null,
    Object? accountRole = null,
  }) {
    return _then(_$PayerIdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      accountRole: null == accountRole
          ? _value.accountRole
          : accountRole // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayerIdImpl implements _PayerId {
  const _$PayerIdImpl(
      {required this.id,
      required this.nickname,
      required this.photoUrl,
      required this.accountRole});

  factory _$PayerIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayerIdImplFromJson(json);

  @override
  final int id;
  @override
  final String nickname;
  @override
  final String photoUrl;
  @override
  final String accountRole;

  @override
  String toString() {
    return 'PayerId(id: $id, nickname: $nickname, photoUrl: $photoUrl, accountRole: $accountRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayerIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.accountRole, accountRole) ||
                other.accountRole == accountRole));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nickname, photoUrl, accountRole);

  /// Create a copy of PayerId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PayerIdImplCopyWith<_$PayerIdImpl> get copyWith =>
      __$$PayerIdImplCopyWithImpl<_$PayerIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayerIdImplToJson(
      this,
    );
  }
}

abstract class _PayerId implements PayerId {
  const factory _PayerId(
      {required final int id,
      required final String nickname,
      required final String photoUrl,
      required final String accountRole}) = _$PayerIdImpl;

  factory _PayerId.fromJson(Map<String, dynamic> json) = _$PayerIdImpl.fromJson;

  @override
  int get id;
  @override
  String get nickname;
  @override
  String get photoUrl;
  @override
  String get accountRole;

  /// Create a copy of PayerId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PayerIdImplCopyWith<_$PayerIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AccountId _$AccountIdFromJson(Map<String, dynamic> json) {
  return _AccountId.fromJson(json);
}

/// @nodoc
mixin _$AccountId {
  int get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  String get accountRole => throw _privateConstructorUsedError;

  /// Serializes this AccountId to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AccountId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountIdCopyWith<AccountId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountIdCopyWith<$Res> {
  factory $AccountIdCopyWith(AccountId value, $Res Function(AccountId) then) =
      _$AccountIdCopyWithImpl<$Res, AccountId>;
  @useResult
  $Res call({int id, String nickname, String photoUrl, String accountRole});
}

/// @nodoc
class _$AccountIdCopyWithImpl<$Res, $Val extends AccountId>
    implements $AccountIdCopyWith<$Res> {
  _$AccountIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? photoUrl = null,
    Object? accountRole = null,
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
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      accountRole: null == accountRole
          ? _value.accountRole
          : accountRole // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountIdImplCopyWith<$Res>
    implements $AccountIdCopyWith<$Res> {
  factory _$$AccountIdImplCopyWith(
          _$AccountIdImpl value, $Res Function(_$AccountIdImpl) then) =
      __$$AccountIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nickname, String photoUrl, String accountRole});
}

/// @nodoc
class __$$AccountIdImplCopyWithImpl<$Res>
    extends _$AccountIdCopyWithImpl<$Res, _$AccountIdImpl>
    implements _$$AccountIdImplCopyWith<$Res> {
  __$$AccountIdImplCopyWithImpl(
      _$AccountIdImpl _value, $Res Function(_$AccountIdImpl) _then)
      : super(_value, _then);

  /// Create a copy of AccountId
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? photoUrl = null,
    Object? accountRole = null,
  }) {
    return _then(_$AccountIdImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: null == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      accountRole: null == accountRole
          ? _value.accountRole
          : accountRole // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountIdImpl implements _AccountId {
  const _$AccountIdImpl(
      {required this.id,
      required this.nickname,
      required this.photoUrl,
      required this.accountRole});

  factory _$AccountIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountIdImplFromJson(json);

  @override
  final int id;
  @override
  final String nickname;
  @override
  final String photoUrl;
  @override
  final String accountRole;

  @override
  String toString() {
    return 'AccountId(id: $id, nickname: $nickname, photoUrl: $photoUrl, accountRole: $accountRole)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountIdImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.accountRole, accountRole) ||
                other.accountRole == accountRole));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nickname, photoUrl, accountRole);

  /// Create a copy of AccountId
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountIdImplCopyWith<_$AccountIdImpl> get copyWith =>
      __$$AccountIdImplCopyWithImpl<_$AccountIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountIdImplToJson(
      this,
    );
  }
}

abstract class _AccountId implements AccountId {
  const factory _AccountId(
      {required final int id,
      required final String nickname,
      required final String photoUrl,
      required final String accountRole}) = _$AccountIdImpl;

  factory _AccountId.fromJson(Map<String, dynamic> json) =
      _$AccountIdImpl.fromJson;

  @override
  int get id;
  @override
  String get nickname;
  @override
  String get photoUrl;
  @override
  String get accountRole;

  /// Create a copy of AccountId
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountIdImplCopyWith<_$AccountIdImpl> get copyWith =>
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

  /// Serializes this Place to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, placeName, placeNum, placeType);

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
