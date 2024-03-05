import 'package:fast_app_base/data/entity/itinerary/vo_itinerary.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
final itineraryProvider =  StateNotifierProvider<ItineraryNotifier, List<Itinerary>>((ref) {
  return ItineraryNotifier();
});

class ItineraryNotifier extends StateNotifier<List<Itinerary>>{
  ItineraryNotifier() : super([]);


  DateTime? selectedStartDate;
  DateTime? selectedEndDate;
  List<String> selectedWhoTags = [];
  List<String> selectedStyleTags = [];
  String? selectedArea;

  void addItinerary(Itinerary newItinerary) {
    state = [...state, newItinerary];
  }

  // 새로운 상태 변수 추가


  void setSelectedDates(DateTime? startDate, DateTime? endDate) {
    selectedStartDate = startDate;
    selectedEndDate = endDate;
  }
  void updateWhoTags(List<String> tags) {
    selectedWhoTags = tags;
  }

  void updateStyleTags(List<String> tags) {
    selectedStyleTags = tags;
  }

  void setSelectedArea(String? area) {
    selectedArea = area;
  }
}