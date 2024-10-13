import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_shorts_read.freezed.dart';
part 'vo_shorts_read.g.dart';


@freezed
class ShortsRead with _$ShortsRead {
  const factory ShortsRead({
    required List<Shorts> shortsList,
  }) = _ShortsRead;

  factory ShortsRead.fromJson(Map<String, dynamic> json) => _$ShortsReadFromJson(json);
}

@freezed
class Shorts with _$Shorts {
  const factory Shorts({
    required int shortsId,
    required String videoUrl,
    required String title,
    required String content,
    required DateTime date,
    required int likes,
    required int commentNum,
    required Account account,
    required Itinerary itinerary,
  }) = _Shorts;

  factory Shorts.fromJson(Map<String, dynamic> json) => _$ShortsFromJson(json);
}

@freezed
class Account with _$Account {
  const factory Account({
    required int id,
    required String nickname,
    required String? photoUrl,
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
