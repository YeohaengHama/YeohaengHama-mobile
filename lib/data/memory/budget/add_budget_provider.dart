import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../entity/budget/vo_add_budget.dart';

final addBudgetProvider =
StateNotifierProvider<AddBudgetNotifier, AddBudget>((ref) {
  return AddBudgetNotifier();
});

class AddBudgetNotifier extends StateNotifier<AddBudget> {
  AddBudgetNotifier()
      : super(AddBudget(
    expendituresId: null,
    budgetId: 0,
    totalAmount: 0,
    payerId: 0,
    amount: [],
    accounts: [],
    accountId: [],
    place: 0,
    day: 0,
    paymentMethod: '현금',
    content: '',
    category: '',
    placeName: '',
    divided: true,
    individual: false,
  ));

  void setExpendituresId(int expendituresId) {
    state = state.copyWith(expendituresId: expendituresId);
  }

  void setBudgetId(int budgetId) {
    state = state.copyWith(budgetId: budgetId);
  }
  void setPlace(int place) {
    state = state.copyWith(place: place);
  }
  void setTotalAmount(int totalAmount) {
    state = state.copyWith(totalAmount: totalAmount);
  }
  int getTotalAmount() {
    return state.totalAmount;
  }
  void setPayerId(int payerId) {
    state = state.copyWith(payerId: payerId);
  }
  void removeAmount(){
    state =state.copyWith(amount: []);
  }
  void setAmount(List<int> amount) {
    state =state.copyWith(amount: amount);
  }
  void setAccounts(List<Accounts> accounts) {
    state = state.copyWith(accounts: accounts ?? []);
  }


  void setAccountId(List<int> accountId) {
    state = state.copyWith(accountId: accountId);
  }
  int getAccountListLength() {

    return state.accountId.length;
  }

  void setPlaceName(String placeName) {
    state = state.copyWith(placeName: placeName);
  }
  void setDay(int day) {
    state = state.copyWith(day: day);
  }

  void setPaymentMethod(String paymentMethod) {
    state = state.copyWith(paymentMethod: paymentMethod);
  }

  void setContent(String content) {
    state = state.copyWith(content: content);
  }

  void setCategory(String category) {
    state = state.copyWith(category: category);
  }

  void setDivided(bool divided) {
    state = state.copyWith(divided: divided);
  }
  void setIndividual(bool individual) {
    state = state.copyWith(individual: individual);
  }

  void setAddBudget(AddBudget item) {
    state = item;
  }
  void removePayerAndAccounts(){
    state = state.copyWith(payerId: 0);
    state = state.copyWith(accounts: []);
  }

  void removeAddBudget() {
    state = AddBudget(
      expendituresId: null,
      totalAmount: 0,
      budgetId: 0,
      payerId: 0,
      place: 0,
      accounts: [],
      amount: [],
      accountId: [],
      placeName: '',
      day: 0,
      paymentMethod: '현금',
      content: '',
      category: '',
      divided: true,
      individual: false,
    );
  }
}
