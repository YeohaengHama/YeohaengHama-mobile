import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_itinerary.freezed.dart';
part 'vo_itinerary.g.dart';



@freezed
class Itinerary with _$Itinerary {
  const factory Itinerary(
  {
    required String name,
    required List<String> type,
    required List<String> itineraryStyle,
    @Default('bus') String transportation,
    required String area,
    required String startDate,
    required String endDate,

    @Default('0')String? expense,

}
      ) = _Itinerary;

  factory Itinerary.fromJson(Map<String, dynamic> json) =>
      _$ItineraryFromJson(json);
}
