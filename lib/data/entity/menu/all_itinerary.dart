import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_itinerary.freezed.dart';
part 'all_itinerary.g.dart';

@freezed
class AllItinerary with _$AllItinerary {
  const factory AllItinerary({
    required String startDate,
    required String endDate,
    required int itineraryId,
    required String name,
    required int placeLength,

  }
      ) = _AllItinerary;

  factory AllItinerary.fromJson(Map<String, dynamic> json) =>
      _$AllItineraryFromJson(json);
}
