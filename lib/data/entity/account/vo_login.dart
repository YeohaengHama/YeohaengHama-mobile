import 'package:freezed_annotation/freezed_annotation.dart';
part 'vo_login.g.dart';
part 'vo_login.freezed.dart';

@freezed
class LogIn with _$LogIn {
  const factory LogIn({
    required String email,
    required String pw,
}) = _logIn;

  factory LogIn.fromJson(Map<String, dynamic> json) => _$LogInFromJson(json);
}
