import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../entity/budget/vo_add_budget.dart';

final addBudgetProvider =
StateNotifierProvider<AddBudgetNotifier, AddBudget>((ref) {
  return AddBudgetNotifier();
});

class AddBudgetNotifier extends StateNotifier<AddBudget> {
  AddBudgetNotifier()
      : super(AddBudget(
    itineraryId: 0,
    place: 0,
    placeName: '',
    day: 0,
    paymentMethod: '현금',
    content: '',
    category: '',
    name: '',
    amount: 0,
  ));

  void setItineraryId(int itineraryId) {
    state = state.copyWith(itineraryId: itineraryId);
  }

  void setPlace(int place) {
    state = state.copyWith(place: place);
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

  void setName(String name) {
    state = state.copyWith(name: name);
  }

  void setAmount(int amount) {
    state = state.copyWith(amount: amount);
  }
  void setPlaceName(String placeName) {
    state = state.copyWith(placeName: placeName);
  }


  void setAddBudget(AddBudget item) {
    state = item;
  }
  void removeAddBudget() {
    state = AddBudget(
      itineraryId: 0,
      place: 0,
      placeName: '',
      day: 0,
      paymentMethod: '현금',
      content: '',
      category: '',
      name: '',
      amount: 0,
    );
  }
}
