import 'package:fast_app_base/data/entity/itinerary/vo_itinerary.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart'; // intl 패키지를 추가하세요

final itineraryProvider = StateNotifierProvider<ItineraryNotifier, List<Itinerary>>((ref) {
  return ItineraryNotifier();
});

class ItineraryNotifier extends StateNotifier<List<Itinerary>> {
  ItineraryNotifier() : super([]);

  String? selectedStartDate;
  String? selectedEndDate;
  List<String> selectedWhoTags = [];
  List<String> selectedStyleTags = [];
  String? selectedArea;

  void addItinerary(Itinerary newItinerary) {
    state = [...state, newItinerary];
  }

  void setSelectedDates(DateTime? startDate, DateTime? endDate) {

    // 선택된 시작 날짜와 종료 날짜가 모두 null이 아닐 경우에만 포맷팅하여 저장합니다.
    if (startDate != null && endDate != null) {
      selectedStartDate = formatDate(startDate!);
      selectedEndDate = formatDate(endDate!);
    }
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

  // 서버에 전송하기 전에 날짜를 원하는 형식으로 포맷팅하는 메서드
  String formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }


}
