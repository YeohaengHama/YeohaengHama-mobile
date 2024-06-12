import 'package:hooks_riverpod/hooks_riverpod.dart';

class AmountState {
  final int amount;
  AmountState(this.amount);
}

class AmountController extends StateNotifier<AmountState> {
  AmountController() : super(AmountState(0));

  void setAmount(int newAmount) {
    state = AmountState(newAmount);
  }
  void removeAmount() {
    state = AmountState(0);
  }
}


final amountControllerProvider = StateNotifierProvider<AmountController, AmountState>((ref) {
  return AmountController();
});
