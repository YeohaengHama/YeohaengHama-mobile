// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_login.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LogIn _$LogInFromJson(Map<String, dynamic> json) {
  return _logIn.fromJson(json);
}

/// @nodoc
mixin _$LogIn {
  String get email => throw _privateConstructorUsedError;
  String get pw => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogInCopyWith<LogIn> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInCopyWith<$Res> {
  factory $LogInCopyWith(LogIn value, $Res Function(LogIn) then) =
      _$LogInCopyWithImpl<$Res, LogIn>;
  @useResult
  $Res call({String email, String pw});
}

/// @nodoc
class _$LogInCopyWithImpl<$Res, $Val extends LogIn>
    implements $LogInCopyWith<$Res> {
  _$LogInCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? pw = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      pw: null == pw
          ? _value.pw
          : pw // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_logInCopyWith<$Res> implements $LogInCopyWith<$Res> {
  factory _$$_logInCopyWith(_$_logIn value, $Res Function(_$_logIn) then) =
      __$$_logInCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String pw});
}

/// @nodoc
class __$$_logInCopyWithImpl<$Res> extends _$LogInCopyWithImpl<$Res, _$_logIn>
    implements _$$_logInCopyWith<$Res> {
  __$$_logInCopyWithImpl(_$_logIn _value, $Res Function(_$_logIn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? pw = null,
  }) {
    return _then(_$_logIn(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      pw: null == pw
          ? _value.pw
          : pw // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_logIn implements _logIn {
  const _$_logIn({required this.email, required this.pw});

  factory _$_logIn.fromJson(Map<String, dynamic> json) =>
      _$$_logInFromJson(json);

  @override
  final String email;
  @override
  final String pw;

  @override
  String toString() {
    return 'LogIn(email: $email, pw: $pw)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_logIn &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.pw, pw) || other.pw == pw));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, pw);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_logInCopyWith<_$_logIn> get copyWith =>
      __$$_logInCopyWithImpl<_$_logIn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_logInToJson(
      this,
    );
  }
}

abstract class _logIn implements LogIn {
  const factory _logIn(
      {required final String email, required final String pw}) = _$_logIn;

  factory _logIn.fromJson(Map<String, dynamic> json) = _$_logIn.fromJson;

  @override
  String get email;
  @override
  String get pw;
  @override
  @JsonKey(ignore: true)
  _$$_logInCopyWith<_$_logIn> get copyWith =>
      throw _privateConstructorUsedError;
}
