import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_detail_diary.freezed.dart';
part 'vo_detail_diary.g.dart';

@freezed
class DetailDiary with _$DetailDiary {
  const factory DetailDiary({
    required int id,
    required List<String>? tag,
    required String date,
    required String title,
    required String content,
    required List<String> photos,
    required Account account,
    required Itinerary itinerary,
  }) = _DetailDiary;

  factory DetailDiary.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic> jsonData = json['data'] as Map<String, dynamic>;
    final accountJson = jsonData['account'] as Map<String, dynamic>;
    final account = Account.fromJson(accountJson);

    final itineraryJson = jsonData['itinerary'] as Map<String, dynamic>;
    final placeJson = itineraryJson['place'] as Map<String, dynamic>;
    final places = <String, List<Place>>{};
    placeJson.forEach((key, value) {
      final placeList = (value as List<dynamic>).map((e) => Place.fromJson(e as Map<String, dynamic>)).toList();
      places[key] = placeList;
    });
    final Map<String, dynamic> modifiedItineraryJson = Map<String, dynamic>.from(itineraryJson);
    modifiedItineraryJson['place'] = places;
    final itinerary = Itinerary.fromJson(modifiedItineraryJson);


    return DetailDiary(
      id: jsonData['id'] as int,
      tag: (jsonData['tag'] as List<dynamic>).map((e) => e.toString()).toList(),
      date: jsonData['date'] as String,
      title: jsonData['title'] as String,
      content: jsonData['content'] as String,
      photos: (jsonData['photos'] as List<dynamic>).map((e) => e.toString()).toList(),
      account: account,
      itinerary: itinerary,
    );
  }
}

@freezed
class Account with _$Account {
  const factory Account({
    required int id,
    required String nickname,
    required String? photoUrl,
    required String accountRole,
  }) = _Account;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

@freezed
class Itinerary with _$Itinerary {
  const factory Itinerary({
    required int itineraryId,
    required List<String>? type,
    required List<String>? style,
    required String name,
    required String transportation,
    required String area,
    required DateTime startDate,
    required DateTime endDate,
    required Map<String, List<Place>> place,
  }) = _Itinerary;

  factory Itinerary.fromJson(Map<String, dynamic> json) =>
      _$ItineraryFromJson(json);
}

@freezed
class Place with _$Place {
  const factory Place({
    required int day,
    required String startTime,
    required String endTime,
    required String placeType,
    required String placeNum,
    required String placeName,
    required String addr1,
    required double mapx,
    required double mapy,
    required String? memo,
    required Review? review,
    required int placeId,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}

@freezed
class Review with _$Review {
  const factory Review({
    required int reviewId,
    required double rating,
    required String content,
    required List<String>? reviewPhotoURLList,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);
}
