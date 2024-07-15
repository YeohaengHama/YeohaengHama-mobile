import 'package:fast_app_base/data/entity/account/show_all_account.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';



// AllAccountProvider 생성
final allAccountProvider = StateNotifierProvider<AllAccountNotifier, List<ShowAllAccount>>((ref) {
  return AllAccountNotifier();
});

// AllAccountNotifier 클래스 정의
class AllAccountNotifier extends StateNotifier<List<ShowAllAccount>> {
  AllAccountNotifier() : super([]);

  // 계정 정보를 추가하는 메서드
  void addAccount(List<ShowAllAccount> account) {
    state =  account;
  }

  // 모든 계정 정보를 리셋하는 메서드
  void reset() {
    state = [];
  }
}
