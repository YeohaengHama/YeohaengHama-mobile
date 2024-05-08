import 'package:fast_app_base/data/entity/itinerary/vo_itinerary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_place.freezed.dart';
part 'vo_place.g.dart';

@freezed
class Place with _$Place {
  const factory Place({
    required int id,
    required int day,
    required String placeNum,
    required String placeName,
    Itinerary? itinerary,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);

}

