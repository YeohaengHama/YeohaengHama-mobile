import 'package:fast_app_base/data/entity/account/vo_current_account.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// AccountProvider 생성
final accountProvider = StateNotifierProvider<AccountNotifier, CurrentAccount?>((ref) {
  return AccountNotifier();
});

// AccountNotifier 클래스 정의
class AccountNotifier extends StateNotifier<CurrentAccount?> {
  AccountNotifier() : super(null);

  // 현재 계정 정보를 업데이트하는 메서드
  void addCurrentAccount(CurrentAccount currentAccount) {
    state = currentAccount;
  }
  
  void reset() {
    state = null;
  }
}
