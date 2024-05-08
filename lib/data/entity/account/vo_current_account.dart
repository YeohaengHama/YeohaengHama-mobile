import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_current_account.freezed.dart';

@freezed
class CurrentAccount with _$CurrentAccount {
  const factory CurrentAccount(
  {
    required String id,
    required String nickName,
    String? photoUrl,
}
      ) = _CurrentAccount;
  
}
