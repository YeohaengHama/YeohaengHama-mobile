// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatbotResponse<T> {
  String get question => throw _privateConstructorUsedError;
  String get answer => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  T? get result => throw _privateConstructorUsedError;
  List<Map<String, double>>? get other => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatbotResponseCopyWith<T, ChatbotResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatbotResponseCopyWith<T, $Res> {
  factory $ChatbotResponseCopyWith(
          ChatbotResponse<T> value, $Res Function(ChatbotResponse<T>) then) =
      _$ChatbotResponseCopyWithImpl<T, $Res, ChatbotResponse<T>>;
  @useResult
  $Res call(
      {String question,
      String answer,
      String type,
      T? result,
      List<Map<String, double>>? other});
}

/// @nodoc
class _$ChatbotResponseCopyWithImpl<T, $Res, $Val extends ChatbotResponse<T>>
    implements $ChatbotResponseCopyWith<T, $Res> {
  _$ChatbotResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? type = null,
    Object? result = freezed,
    Object? other = freezed,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      other: freezed == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as List<Map<String, double>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatbotResponseImplCopyWith<T, $Res>
    implements $ChatbotResponseCopyWith<T, $Res> {
  factory _$$ChatbotResponseImplCopyWith(_$ChatbotResponseImpl<T> value,
          $Res Function(_$ChatbotResponseImpl<T>) then) =
      __$$ChatbotResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {String question,
      String answer,
      String type,
      T? result,
      List<Map<String, double>>? other});
}

/// @nodoc
class __$$ChatbotResponseImplCopyWithImpl<T, $Res>
    extends _$ChatbotResponseCopyWithImpl<T, $Res, _$ChatbotResponseImpl<T>>
    implements _$$ChatbotResponseImplCopyWith<T, $Res> {
  __$$ChatbotResponseImplCopyWithImpl(_$ChatbotResponseImpl<T> _value,
      $Res Function(_$ChatbotResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? type = null,
    Object? result = freezed,
    Object? other = freezed,
  }) {
    return _then(_$ChatbotResponseImpl<T>(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      other: freezed == other
          ? _value._other
          : other // ignore: cast_nullable_to_non_nullable
              as List<Map<String, double>>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(genericArgumentFactories: true)
class _$ChatbotResponseImpl<T> implements _ChatbotResponse<T> {
  const _$ChatbotResponseImpl(
      {required this.question,
      required this.answer,
      required this.type,
      required this.result,
      final List<Map<String, double>>? other})
      : _other = other;

  @override
  final String question;
  @override
  final String answer;
  @override
  final String type;
  @override
  final T? result;
  final List<Map<String, double>>? _other;
  @override
  List<Map<String, double>>? get other {
    final value = _other;
    if (value == null) return null;
    if (_other is EqualUnmodifiableListView) return _other;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatbotResponse<$T>(question: $question, answer: $answer, type: $type, result: $result, other: $other)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatbotResponseImpl<T> &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(other._other, this._other));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      question,
      answer,
      type,
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(_other));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatbotResponseImplCopyWith<T, _$ChatbotResponseImpl<T>> get copyWith =>
      __$$ChatbotResponseImplCopyWithImpl<T, _$ChatbotResponseImpl<T>>(
          this, _$identity);
}

abstract class _ChatbotResponse<T> implements ChatbotResponse<T> {
  const factory _ChatbotResponse(
      {required final String question,
      required final String answer,
      required final String type,
      required final T? result,
      final List<Map<String, double>>? other}) = _$ChatbotResponseImpl<T>;

  @override
  String get question;
  @override
  String get answer;
  @override
  String get type;
  @override
  T? get result;
  @override
  List<Map<String, double>>? get other;
  @override
  @JsonKey(ignore: true)
  _$$ChatbotResponseImplCopyWith<T, _$ChatbotResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

ShowDiaryAllResult _$ShowDiaryAllResultFromJson(Map<String, dynamic> json) {
  return _ShowDiaryAllResult.fromJson(json);
}

/// @nodoc
mixin _$ShowDiaryAllResult {
  String get keyword => throw _privateConstructorUsedError;
  List<Diary> get diary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowDiaryAllResultCopyWith<ShowDiaryAllResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowDiaryAllResultCopyWith<$Res> {
  factory $ShowDiaryAllResultCopyWith(
          ShowDiaryAllResult value, $Res Function(ShowDiaryAllResult) then) =
      _$ShowDiaryAllResultCopyWithImpl<$Res, ShowDiaryAllResult>;
  @useResult
  $Res call({String keyword, List<Diary> diary});
}

/// @nodoc
class _$ShowDiaryAllResultCopyWithImpl<$Res, $Val extends ShowDiaryAllResult>
    implements $ShowDiaryAllResultCopyWith<$Res> {
  _$ShowDiaryAllResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? diary = null,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      diary: null == diary
          ? _value.diary
          : diary // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowDiaryAllResultImplCopyWith<$Res>
    implements $ShowDiaryAllResultCopyWith<$Res> {
  factory _$$ShowDiaryAllResultImplCopyWith(_$ShowDiaryAllResultImpl value,
          $Res Function(_$ShowDiaryAllResultImpl) then) =
      __$$ShowDiaryAllResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyword, List<Diary> diary});
}

/// @nodoc
class __$$ShowDiaryAllResultImplCopyWithImpl<$Res>
    extends _$ShowDiaryAllResultCopyWithImpl<$Res, _$ShowDiaryAllResultImpl>
    implements _$$ShowDiaryAllResultImplCopyWith<$Res> {
  __$$ShowDiaryAllResultImplCopyWithImpl(_$ShowDiaryAllResultImpl _value,
      $Res Function(_$ShowDiaryAllResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? diary = null,
  }) {
    return _then(_$ShowDiaryAllResultImpl(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      diary: null == diary
          ? _value._diary
          : diary // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowDiaryAllResultImpl implements _ShowDiaryAllResult {
  const _$ShowDiaryAllResultImpl(
      {required this.keyword, required final List<Diary> diary})
      : _diary = diary;

  factory _$ShowDiaryAllResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowDiaryAllResultImplFromJson(json);

  @override
  final String keyword;
  final List<Diary> _diary;
  @override
  List<Diary> get diary {
    if (_diary is EqualUnmodifiableListView) return _diary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diary);
  }

  @override
  String toString() {
    return 'ShowDiaryAllResult(keyword: $keyword, diary: $diary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowDiaryAllResultImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            const DeepCollectionEquality().equals(other._diary, _diary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, keyword, const DeepCollectionEquality().hash(_diary));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowDiaryAllResultImplCopyWith<_$ShowDiaryAllResultImpl> get copyWith =>
      __$$ShowDiaryAllResultImplCopyWithImpl<_$ShowDiaryAllResultImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowDiaryAllResultImplToJson(
      this,
    );
  }
}

abstract class _ShowDiaryAllResult implements ShowDiaryAllResult {
  const factory _ShowDiaryAllResult(
      {required final String keyword,
      required final List<Diary> diary}) = _$ShowDiaryAllResultImpl;

  factory _ShowDiaryAllResult.fromJson(Map<String, dynamic> json) =
      _$ShowDiaryAllResultImpl.fromJson;

  @override
  String get keyword;
  @override
  List<Diary> get diary;
  @override
  @JsonKey(ignore: true)
  _$$ShowDiaryAllResultImplCopyWith<_$ShowDiaryAllResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShowDiaryPlaceResult _$ShowDiaryPlaceResultFromJson(Map<String, dynamic> json) {
  return _ShowDiaryPlaceResult.fromJson(json);
}

/// @nodoc
mixin _$ShowDiaryPlaceResult {
  String get keyword => throw _privateConstructorUsedError;
  List<Diary> get diary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowDiaryPlaceResultCopyWith<ShowDiaryPlaceResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowDiaryPlaceResultCopyWith<$Res> {
  factory $ShowDiaryPlaceResultCopyWith(ShowDiaryPlaceResult value,
          $Res Function(ShowDiaryPlaceResult) then) =
      _$ShowDiaryPlaceResultCopyWithImpl<$Res, ShowDiaryPlaceResult>;
  @useResult
  $Res call({String keyword, List<Diary> diary});
}

/// @nodoc
class _$ShowDiaryPlaceResultCopyWithImpl<$Res,
        $Val extends ShowDiaryPlaceResult>
    implements $ShowDiaryPlaceResultCopyWith<$Res> {
  _$ShowDiaryPlaceResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? diary = null,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      diary: null == diary
          ? _value.diary
          : diary // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowDiaryPlaceResultImplCopyWith<$Res>
    implements $ShowDiaryPlaceResultCopyWith<$Res> {
  factory _$$ShowDiaryPlaceResultImplCopyWith(_$ShowDiaryPlaceResultImpl value,
          $Res Function(_$ShowDiaryPlaceResultImpl) then) =
      __$$ShowDiaryPlaceResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyword, List<Diary> diary});
}

/// @nodoc
class __$$ShowDiaryPlaceResultImplCopyWithImpl<$Res>
    extends _$ShowDiaryPlaceResultCopyWithImpl<$Res, _$ShowDiaryPlaceResultImpl>
    implements _$$ShowDiaryPlaceResultImplCopyWith<$Res> {
  __$$ShowDiaryPlaceResultImplCopyWithImpl(_$ShowDiaryPlaceResultImpl _value,
      $Res Function(_$ShowDiaryPlaceResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? diary = null,
  }) {
    return _then(_$ShowDiaryPlaceResultImpl(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      diary: null == diary
          ? _value._diary
          : diary // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowDiaryPlaceResultImpl implements _ShowDiaryPlaceResult {
  const _$ShowDiaryPlaceResultImpl(
      {required this.keyword, required final List<Diary> diary})
      : _diary = diary;

  factory _$ShowDiaryPlaceResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowDiaryPlaceResultImplFromJson(json);

  @override
  final String keyword;
  final List<Diary> _diary;
  @override
  List<Diary> get diary {
    if (_diary is EqualUnmodifiableListView) return _diary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diary);
  }

  @override
  String toString() {
    return 'ShowDiaryPlaceResult(keyword: $keyword, diary: $diary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowDiaryPlaceResultImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            const DeepCollectionEquality().equals(other._diary, _diary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, keyword, const DeepCollectionEquality().hash(_diary));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowDiaryPlaceResultImplCopyWith<_$ShowDiaryPlaceResultImpl>
      get copyWith =>
          __$$ShowDiaryPlaceResultImplCopyWithImpl<_$ShowDiaryPlaceResultImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowDiaryPlaceResultImplToJson(
      this,
    );
  }
}

abstract class _ShowDiaryPlaceResult implements ShowDiaryPlaceResult {
  const factory _ShowDiaryPlaceResult(
      {required final String keyword,
      required final List<Diary> diary}) = _$ShowDiaryPlaceResultImpl;

  factory _ShowDiaryPlaceResult.fromJson(Map<String, dynamic> json) =
      _$ShowDiaryPlaceResultImpl.fromJson;

  @override
  String get keyword;
  @override
  List<Diary> get diary;
  @override
  @JsonKey(ignore: true)
  _$$ShowDiaryPlaceResultImplCopyWith<_$ShowDiaryPlaceResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ShowPopularAreaResult _$ShowPopularAreaResultFromJson(
    Map<String, dynamic> json) {
  return _ShowPopularAreaResult.fromJson(json);
}

/// @nodoc
mixin _$ShowPopularAreaResult {
  String get first => throw _privateConstructorUsedError;
  String? get second => throw _privateConstructorUsedError;
  String? get third => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowPopularAreaResultCopyWith<ShowPopularAreaResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowPopularAreaResultCopyWith<$Res> {
  factory $ShowPopularAreaResultCopyWith(ShowPopularAreaResult value,
          $Res Function(ShowPopularAreaResult) then) =
      _$ShowPopularAreaResultCopyWithImpl<$Res, ShowPopularAreaResult>;
  @useResult
  $Res call({String first, String? second, String? third});
}

/// @nodoc
class _$ShowPopularAreaResultCopyWithImpl<$Res,
        $Val extends ShowPopularAreaResult>
    implements $ShowPopularAreaResultCopyWith<$Res> {
  _$ShowPopularAreaResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? second = freezed,
    Object? third = freezed,
  }) {
    return _then(_value.copyWith(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      second: freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as String?,
      third: freezed == third
          ? _value.third
          : third // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowPopularAreaResultImplCopyWith<$Res>
    implements $ShowPopularAreaResultCopyWith<$Res> {
  factory _$$ShowPopularAreaResultImplCopyWith(
          _$ShowPopularAreaResultImpl value,
          $Res Function(_$ShowPopularAreaResultImpl) then) =
      __$$ShowPopularAreaResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String first, String? second, String? third});
}

/// @nodoc
class __$$ShowPopularAreaResultImplCopyWithImpl<$Res>
    extends _$ShowPopularAreaResultCopyWithImpl<$Res,
        _$ShowPopularAreaResultImpl>
    implements _$$ShowPopularAreaResultImplCopyWith<$Res> {
  __$$ShowPopularAreaResultImplCopyWithImpl(_$ShowPopularAreaResultImpl _value,
      $Res Function(_$ShowPopularAreaResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? second = freezed,
    Object? third = freezed,
  }) {
    return _then(_$ShowPopularAreaResultImpl(
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as String,
      second: freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as String?,
      third: freezed == third
          ? _value.third
          : third // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShowPopularAreaResultImpl implements _ShowPopularAreaResult {
  const _$ShowPopularAreaResultImpl(
      {required this.first, required this.second, required this.third});

  factory _$ShowPopularAreaResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShowPopularAreaResultImplFromJson(json);

  @override
  final String first;
  @override
  final String? second;
  @override
  final String? third;

  @override
  String toString() {
    return 'ShowPopularAreaResult(first: $first, second: $second, third: $third)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowPopularAreaResultImpl &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.second, second) || other.second == second) &&
            (identical(other.third, third) || other.third == third));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, first, second, third);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowPopularAreaResultImplCopyWith<_$ShowPopularAreaResultImpl>
      get copyWith => __$$ShowPopularAreaResultImplCopyWithImpl<
          _$ShowPopularAreaResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShowPopularAreaResultImplToJson(
      this,
    );
  }
}

abstract class _ShowPopularAreaResult implements ShowPopularAreaResult {
  const factory _ShowPopularAreaResult(
      {required final String first,
      required final String? second,
      required final String? third}) = _$ShowPopularAreaResultImpl;

  factory _ShowPopularAreaResult.fromJson(Map<String, dynamic> json) =
      _$ShowPopularAreaResultImpl.fromJson;

  @override
  String get first;
  @override
  String? get second;
  @override
  String? get third;
  @override
  @JsonKey(ignore: true)
  _$$ShowPopularAreaResultImplCopyWith<_$ShowPopularAreaResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Diary _$DiaryFromJson(Map<String, dynamic> json) {
  return _Diary.fromJson(json);
}

/// @nodoc
mixin _$Diary {
  int get diaryId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiaryCopyWith<Diary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryCopyWith<$Res> {
  factory $DiaryCopyWith(Diary value, $Res Function(Diary) then) =
      _$DiaryCopyWithImpl<$Res, Diary>;
  @useResult
  $Res call({int diaryId, String title});
}

/// @nodoc
class _$DiaryCopyWithImpl<$Res, $Val extends Diary>
    implements $DiaryCopyWith<$Res> {
  _$DiaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diaryId = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      diaryId: null == diaryId
          ? _value.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiaryImplCopyWith<$Res> implements $DiaryCopyWith<$Res> {
  factory _$$DiaryImplCopyWith(
          _$DiaryImpl value, $Res Function(_$DiaryImpl) then) =
      __$$DiaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int diaryId, String title});
}

/// @nodoc
class __$$DiaryImplCopyWithImpl<$Res>
    extends _$DiaryCopyWithImpl<$Res, _$DiaryImpl>
    implements _$$DiaryImplCopyWith<$Res> {
  __$$DiaryImplCopyWithImpl(
      _$DiaryImpl _value, $Res Function(_$DiaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? diaryId = null,
    Object? title = null,
  }) {
    return _then(_$DiaryImpl(
      diaryId: null == diaryId
          ? _value.diaryId
          : diaryId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiaryImpl implements _Diary {
  const _$DiaryImpl({required this.diaryId, required this.title});

  factory _$DiaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiaryImplFromJson(json);

  @override
  final int diaryId;
  @override
  final String title;

  @override
  String toString() {
    return 'Diary(diaryId: $diaryId, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiaryImpl &&
            (identical(other.diaryId, diaryId) || other.diaryId == diaryId) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, diaryId, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DiaryImplCopyWith<_$DiaryImpl> get copyWith =>
      __$$DiaryImplCopyWithImpl<_$DiaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiaryImplToJson(
      this,
    );
  }
}

abstract class _Diary implements Diary {
  const factory _Diary(
      {required final int diaryId, required final String title}) = _$DiaryImpl;

  factory _Diary.fromJson(Map<String, dynamic> json) = _$DiaryImpl.fromJson;

  @override
  int get diaryId;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$DiaryImplCopyWith<_$DiaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
