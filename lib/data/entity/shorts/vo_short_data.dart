import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_short_data.freezed.dart';
part 'vo_short_data.g.dart';


@freezed
class ShortsData with _$ShortsData {
  const factory ShortsData({
    required Account account,
    required String videoUrl,
    required String title,
    required String content,
    required Itinerary itinerary,
  }) = _ShortsData;

  factory ShortsData.fromJson(Map<String, dynamic> json) => _$ShortsDataFromJson(json);
}

@freezed
class Account with _$Account {
  const factory Account({
    required int id,
    required String nickname,
    required String photoUrl,
    required String accountRole,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);
}

@freezed
class Itinerary with _$Itinerary {
  const factory Itinerary({
    required int itineraryId,
    required List<String> type,
    required List<String> style,
    required String name,
    required String transportation,
    required String area,
    required DateTime startDate,
    required DateTime endDate,
    required Account account,
  }) = _Itinerary;

  factory Itinerary.fromJson(Map<String, dynamic> json) => _$ItineraryFromJson(json);
}