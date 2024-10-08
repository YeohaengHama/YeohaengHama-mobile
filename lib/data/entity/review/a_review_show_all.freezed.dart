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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReviewShowAll _$ReviewShowAllFromJson(Map<String, dynamic> json) {
  return _ReviewShowAll.fromJson(json);
}

/// @nodoc
mixin _$ReviewShowAll {
  int? get contentId => throw _privateConstructorUsedError;
  int get contentTypeId => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<String>? get reviewPhotoURLList => throw _privateConstructorUsedError;
  String? get blogURL => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;

  /// Serializes this ReviewShowAll to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReviewShowAll
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {int? contentId,
      int contentTypeId,
      int? rating,
      String content,
      List<String>? reviewPhotoURLList,
      String? blogURL,
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

  /// Create a copy of ReviewShowAll
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = freezed,
    Object? contentTypeId = null,
    Object? rating = freezed,
    Object? content = null,
    Object? reviewPhotoURLList = freezed,
    Object? blogURL = freezed,
    Object? account = null,
  }) {
    return _then(_value.copyWith(
      contentId: freezed == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as int?,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      reviewPhotoURLList: freezed == reviewPhotoURLList
          ? _value.reviewPhotoURLList
          : reviewPhotoURLList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      blogURL: freezed == blogURL
          ? _value.blogURL
          : blogURL // ignore: cast_nullable_to_non_nullable
              as String?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ) as $Val);
  }

  /// Create a copy of ReviewShowAll
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewShowAllImplCopyWith<$Res>
    implements $ReviewShowAllCopyWith<$Res> {
  factory _$$ReviewShowAllImplCopyWith(
          _$ReviewShowAllImpl value, $Res Function(_$ReviewShowAllImpl) then) =
      __$$ReviewShowAllImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? contentId,
      int contentTypeId,
      int? rating,
      String content,
      List<String>? reviewPhotoURLList,
      String? blogURL,
      Account account});

  @override
  $AccountCopyWith<$Res> get account;
}

/// @nodoc
class __$$ReviewShowAllImplCopyWithImpl<$Res>
    extends _$ReviewShowAllCopyWithImpl<$Res, _$ReviewShowAllImpl>
    implements _$$ReviewShowAllImplCopyWith<$Res> {
  __$$ReviewShowAllImplCopyWithImpl(
      _$ReviewShowAllImpl _value, $Res Function(_$ReviewShowAllImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReviewShowAll
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = freezed,
    Object? contentTypeId = null,
    Object? rating = freezed,
    Object? content = null,
    Object? reviewPhotoURLList = freezed,
    Object? blogURL = freezed,
    Object? account = null,
  }) {
    return _then(_$ReviewShowAllImpl(
      contentId: freezed == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as int?,
      contentTypeId: null == contentTypeId
          ? _value.contentTypeId
          : contentTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      reviewPhotoURLList: freezed == reviewPhotoURLList
          ? _value._reviewPhotoURLList
          : reviewPhotoURLList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      blogURL: freezed == blogURL
          ? _value.blogURL
          : blogURL // ignore: cast_nullable_to_non_nullable
              as String?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewShowAllImpl implements _ReviewShowAll {
  _$ReviewShowAllImpl(
      {this.contentId,
      required this.contentTypeId,
      this.rating,
      required this.content,
      final List<String>? reviewPhotoURLList,
      this.blogURL,
      required this.account})
      : _reviewPhotoURLList = reviewPhotoURLList;

  factory _$ReviewShowAllImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewShowAllImplFromJson(json);

  @override
  final int? contentId;
  @override
  final int contentTypeId;
  @override
  final int? rating;
  @override
  final String content;
  final List<String>? _reviewPhotoURLList;
  @override
  List<String>? get reviewPhotoURLList {
    final value = _reviewPhotoURLList;
    if (value == null) return null;
    if (_reviewPhotoURLList is EqualUnmodifiableListView)
      return _reviewPhotoURLList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? blogURL;
  @override
  final Account account;

  @override
  String toString() {
    return 'ReviewShowAll(contentId: $contentId, contentTypeId: $contentTypeId, rating: $rating, content: $content, reviewPhotoURLList: $reviewPhotoURLList, blogURL: $blogURL, account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewShowAllImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.contentTypeId, contentTypeId) ||
                other.contentTypeId == contentTypeId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._reviewPhotoURLList, _reviewPhotoURLList) &&
            (identical(other.blogURL, blogURL) || other.blogURL == blogURL) &&
            (identical(other.account, account) || other.account == account));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contentId,
      contentTypeId,
      rating,
      content,
      const DeepCollectionEquality().hash(_reviewPhotoURLList),
      blogURL,
      account);

  /// Create a copy of ReviewShowAll
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewShowAllImplCopyWith<_$ReviewShowAllImpl> get copyWith =>
      __$$ReviewShowAllImplCopyWithImpl<_$ReviewShowAllImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewShowAllImplToJson(
      this,
    );
  }
}

abstract class _ReviewShowAll implements ReviewShowAll {
  factory _ReviewShowAll(
      {final int? contentId,
      required final int contentTypeId,
      final int? rating,
      required final String content,
      final List<String>? reviewPhotoURLList,
      final String? blogURL,
      required final Account account}) = _$ReviewShowAllImpl;

  factory _ReviewShowAll.fromJson(Map<String, dynamic> json) =
      _$ReviewShowAllImpl.fromJson;

  @override
  int? get contentId;
  @override
  int get contentTypeId;
  @override
  int? get rating;
  @override
  String get content;
  @override
  List<String>? get reviewPhotoURLList;
  @override
  String? get blogURL;
  @override
  Account get account;

  /// Create a copy of ReviewShowAll
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewShowAllImplCopyWith<_$ReviewShowAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Account _$AccountFromJson(Map<String, dynamic> json) {
  return _Account.fromJson(json);
}

/// @nodoc
mixin _$Account {
  int? get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get accountRole => throw _privateConstructorUsedError;

  /// Serializes this Account to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call({int? id, String nickname, String? photoUrl, String? accountRole});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nickname = null,
    Object? photoUrl = freezed,
    Object? accountRole = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $Res call({int? id, String nickname, String? photoUrl, String? accountRole});
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
      _$AccountImpl _value, $Res Function(_$AccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nickname = null,
    Object? photoUrl = freezed,
    Object? accountRole = freezed,
  }) {
    return _then(_$AccountImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
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
  _$AccountImpl(
      {this.id, required this.nickname, this.photoUrl, this.accountRole});

  factory _$AccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountImplFromJson(json);

  @override
  final int? id;
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nickname, photoUrl, accountRole);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
  factory _Account(
      {final int? id,
      required final String nickname,
      final String? photoUrl,
      final String? accountRole}) = _$AccountImpl;

  factory _Account.fromJson(Map<String, dynamic> json) = _$AccountImpl.fromJson;

  @override
  int? get id;
  @override
  String get nickname;
  @override
  String? get photoUrl;
  @override
  String? get accountRole;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
