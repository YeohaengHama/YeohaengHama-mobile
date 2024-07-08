import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_all_account.freezed.dart';
part 'show_all_account.g.dart';


@freezed
class ShowAllAccount with _$ShowAllAccount {
  const factory ShowAllAccount(
  {
    required int id,
    required String email,
    required String? photoUrl,
    required String nickname,

}

      ) = _ShowAllAccount;

  factory ShowAllAccount.fromJson(Map<String, dynamic> json) =>
      _$ShowAllAccountFromJson(json);
}
