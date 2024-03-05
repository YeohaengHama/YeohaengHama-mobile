import 'package:fast_app_base/data/entity/account/vo_account.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_place.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_itinerary.freezed.dart';
part 'vo_itinerary.g.dart';



@freezed
class Itinerary with _$Itinerary {
  const factory Itinerary(
  {
    required int id,
    required String? name,
    required List<String> type,
    required List<String> itineraryStyle,
    required Account account,
    @Default('bus') String transportation,
    required String area,
    required DateTime startDate,
    required DateTime endDate,
    required List<Place> places,
    String? expense,

}
      ) = _Itinerary;

  factory Itinerary.fromJson(Map<String, dynamic> json) =>
      _$ItineraryFromJson(json);
}
