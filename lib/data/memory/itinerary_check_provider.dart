import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../entity/itinerary/a_check_itinerary.dart';

final itineraryCheckProvider = StateNotifierProvider<ItineraryCheckNotifier, CheckItinerary?>((ref) {
  return ItineraryCheckNotifier();
});

class ItineraryCheckNotifier extends StateNotifier<CheckItinerary?> {
  ItineraryCheckNotifier() : super(null);

  void setItinerary(CheckItinerary? checkItinerary) {
    state = checkItinerary;
  }
}
