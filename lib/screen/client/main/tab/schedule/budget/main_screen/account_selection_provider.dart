import 'package:hooks_riverpod/hooks_riverpod.dart';

// Account selection 상태를 관리할 StateNotifier
class AccountSelectionNotifier extends StateNotifier<Map<int, bool>> {
  AccountSelectionNotifier() : super({});

  void selectAccount(int accountId) {
    state = {...state, accountId: true};
  }

  void deselectAccount(int accountId) {
    state = {...state, accountId: false};
  }

}

// Provider 생성
final accountSelectionProvider = StateNotifierProvider<AccountSelectionNotifier, Map<int, bool>>((ref) {
  return AccountSelectionNotifier();
});
