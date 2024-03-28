import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../entity/itinerary/a_creat_itinerary.dart'; // intl 패키지를 추가하세요

final itineraryCreatedProvider = StateNotifierProvider<ItineraryCreatedNotifier, List<CreateItinerary>>((ref) {
  return ItineraryCreatedNotifier();
});

class ItineraryCreatedNotifier extends StateNotifier<List<CreateItinerary>> {
  ItineraryCreatedNotifier() : super([]);


  void addItinerary(CreateItinerary createItinerary) {
    state = [...state, createItinerary];
  }


}
