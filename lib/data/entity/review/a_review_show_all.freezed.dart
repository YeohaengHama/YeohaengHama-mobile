// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'a_review_show_all.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewShowAll _$ReviewShowAllFromJson(Map<String, dynamic> json) {
  return _ReviewShowAll.fromJson(json);
}

/// @nodoc
mixin _$ReviewShowAll {
  int get contentId => throw _privateConstructorUsedError;
  int get contentTypeId => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String> get reviewPhotoURLList => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewShowAllCopyWith<ReviewShowAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewShowAllCopyWith<$Res> {
  factory $ReviewShowAllCopyWith(
          ReviewShowAll value, $Res Function(ReviewShowAll) then) =
      _$ReviewShowAllCopyWithImpl<$Res, ReviewShowAll>;
  @useResult
  $Res call(
      {int contentId,
      int contentTypeId,
      int rating,
      String content,
      List<String> reviewPhotoURLList,
      Account account});

  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class _$ReviewShowAllCopyWithImpl<$Res, $Val extends ReviewShowAll>
    implements $ReviewShowAllCopyWith<$Res> {
  _$ReviewShowAllCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentTypeId = null,
    Object? rating = null,
    Object? content = null,
    Object? reviewPhotoURLList = null,
    Object? account = null,
  }) {
    return _then(_value.copyWith(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as int,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      reviewPhotoURLList: null == reviewPhotoURLList
          ? _value.reviewPhotoURLList
          : reviewPhotoURLList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewShowAllCopyWith<$Res>
    implements $ReviewShowAllCopyWith<$Res> {
  factory _$$_ReviewShowAllCopyWith(
          _$_ReviewShowAll value, $Res Function(_$_ReviewShowAll) then) =
      __$$_ReviewShowAllCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int contentId,
      int contentTypeId,
      int rating,
      String content,
      List<String> reviewPhotoURLList,
      Account account});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$_ReviewShowAllCopyWithImpl<$Res>
    extends _$ReviewShowAllCopyWithImpl<$Res, _$_ReviewShowAll>
    implements _$$_ReviewShowAllCopyWith<$Res> {
  __$$_ReviewShowAllCopyWithImpl(
      _$_ReviewShowAll _value, $Res Function(_$_ReviewShowAll) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? contentTypeId = null,
    Object? rating = null,
    Object? content = null,
    Object? reviewPhotoURLList = null,
    Object? account = null,
  }) {
    return _then(_$_ReviewShowAll(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as int,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      reviewPhotoURLList: null == reviewPhotoURLList
          ? _value._reviewPhotoURLList
          : reviewPhotoURLList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewShowAll implements _ReviewShowAll {
  _$_ReviewShowAll(
      {required this.contentId,
      required this.contentTypeId,
      required this.rating,
      required this.content,
      required final List<String> reviewPhotoURLList,
      required this.account})
      : _reviewPhotoURLList = reviewPhotoURLList;

  factory _$_ReviewShowAll.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewShowAllFromJson(json);

  @override
  final int contentId;
  @override
  final int contentTypeId;
  @override
  final int rating;
  @override
  final String content;
  final List<String> _reviewPhotoURLList;
  @override
  List<String> get reviewPhotoURLList {
    if (_reviewPhotoURLList is EqualUnmodifiableListView)
      return _reviewPhotoURLList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviewPhotoURLList);
  }

  @override
  final Account account;

  @override
  String toString() {
    return 'ReviewShowAll(contentId: $contentId, contentTypeId: $contentTypeId, rating: $rating, content: $content, reviewPhotoURLList: $reviewPhotoURLList, account: $account)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewShowAll &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentTypeId, contentTypeId) ||
                other.contentTypeId == contentTypeId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._reviewPhotoURLList, _reviewPhotoURLList) &&
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contentId,
      contentTypeId,
      rating,
      content,
      const DeepCollectionEquality().hash(_reviewPhotoURLList),
      account);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewShowAllCopyWith<_$_ReviewShowAll> get copyWith =>
      __$$_ReviewShowAllCopyWithImpl<_$_ReviewShowAll>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewShowAllToJson(
      this,
    );
  }
}

abstract class _ReviewShowAll implements ReviewShowAll {
  factory _ReviewShowAll(
      {required final int contentId,
      required final int contentTypeId,
      required final int rating,
      required final String content,
      required final List<String> reviewPhotoURLList,
      required final Account account}) = _$_ReviewShowAll;

  factory _ReviewShowAll.fromJson(Map<String, dynamic> json) =
      _$_ReviewShowAll.fromJson;

  @override
  int get contentId;
  @override
  int get contentTypeId;
  @override
  int get rating;
  @override
  String get content;
  @override
  List<String> get reviewPhotoURLList;
  @override
  Account get account;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewShowAllCopyWith<_$_ReviewShowAll> get copyWith =>
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
abstract class _$$_AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$_AccountCopyWith(
          _$_Account value, $Res Function(_$_Account) then) =
      __$$_AccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String nickname, String? photoUrl});
}

/// @nodoc
class __$$_AccountCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$_Account>
    implements _$$_AccountCopyWith<$Res> {
  __$$_AccountCopyWithImpl(_$_Account _value, $Res Function(_$_Account) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_Account(
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
class _$_Account implements _Account {
  _$_Account({required this.id, required this.nickname, this.photoUrl});

  factory _$_Account.fromJson(Map<String, dynamic> json) =>
      _$$_AccountFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Account &&
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
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      __$$_AccountCopyWithImpl<_$_Account>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountToJson(
      this,
    );
  }
}

abstract class _Account implements Account {
  factory _Account(
      {required final int id,
      required final String nickname,
      final String? photoUrl}) = _$_Account;

  factory _Account.fromJson(Map<String, dynamic> json) = _$_Account.fromJson;

  @override
  int get id;
  @override
  String get nickname;
  @override
  String? get photoUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AccountCopyWith<_$_Account> get copyWith =>
      throw _privateConstructorUsedError;
}