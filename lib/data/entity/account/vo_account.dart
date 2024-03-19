import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_account.freezed.dart';
part 'vo_account.g.dart';


@freezed
class Account with _$Account {
  const factory Account(
  {

    required String email,
    required String pw,
    required String nickname,
    String? file,

     }
      ) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

}
