import 'package:freezed_annotation/freezed_annotation.dart';

part 'share_itinerary.freezed.dart';
part 'share_itinerary.g.dart';

@freezed
class ShareItinerary with _$ShareItinerary {
  const factory ShareItinerary({
    required int id,
    required String name,
    required String area,
    required String startDate,
    required String endDate,
    required int placeLength,
    required int sharedAccount,
    required bool diary,
  }) = _ShareItinerary;

  factory ShareItinerary.fromJson(Map<String, dynamic> json) => _$ShareItineraryFromJson(json);
}
