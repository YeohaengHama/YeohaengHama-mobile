import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../entity/itinerary/a_check_itinerary.dart';

final getItineraryProvider = StateNotifierProvider<GetItineraryNotifier, CheckItinerary?>((ref) {
  return GetItineraryNotifier();
});

class GetItineraryNotifier extends StateNotifier<CheckItinerary?> {
  GetItineraryNotifier() : super(null);

  void getItinerary(CheckItinerary? checkItinerary) {
    state = checkItinerary;
  }

  void reset() {
    state = null;
  }
}
