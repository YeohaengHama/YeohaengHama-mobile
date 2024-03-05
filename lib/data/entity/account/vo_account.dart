import 'package:freezed_annotation/freezed_annotation.dart';
part 'vo_account.freezed.dart';
part 'vo_account.g.dart';
@freezed
class Account with _$Account {
  const factory Account(
  {
    @Default(0) id,
    @Default(0) final int role,
    @Default('test1@test.com')String email,
    @Default('test1')String pw,
    @Default('test1')String nickName,
    String? photoUrl,

     }
      ) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

}
