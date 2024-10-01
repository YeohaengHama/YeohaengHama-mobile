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
    final Map<String, dynamic> data = json;

    final Map<String, dynamic>? itineraryMap = data['itinerary'] as Map<String, dynamic>?;

    if (itineraryMap == null) {
      throw Exception("Invalid JSON format: 'itinerary' key is missing or null.");
    }

    final List<String>? tag = (data['tag'] as List?)?.cast<String>();
    final List<String>? type = (itineraryMap['type'] as List?)?.cast<String>();
    final List<String>? style = (itineraryMap['style'] as List?)?.cast<String>();

    // Ensure that 'place' is initialized as an empty map
    // Ensure that 'place' is initialized as an empty map
    final Map<String, dynamic> placeMap = itineraryMap['place'] ?? {};

// Convert all places to Place objects
    final List<Place> places = (placeMap.entries).expand((entry) {
      final String day = entry.key;
      final List<dynamic>? placesData = entry.value;

      // Check if placesData is null or empty
      if (placesData == null || placesData.isEmpty) {
        // If placesData is null or empty, return an empty list
        return <Place>[];
      }

      // Convert each placeJson to Place object
      return placesData.cast<Map<String, dynamic>>().map((placeJson) {
        return Place.fromJson(placeJson);
      });
    }).toList();

// Group places by day
    final Map<String, List<Place>> placesByDay = {};
    placeMap.forEach((key, value) {
      // Check if value is null or empty
      if (value == null || value.isEmpty) {
        // If value is null or empty, assign an empty list to the key
        placesByDay[key] = [];
      } else {
        // Otherwise, assign the list of places to the key
        placesByDay[key] = places.where((place) => 'Day-${place.day}' == key).toList();
      }
    });

    final itinerary = Itinerary(
      itineraryId: itineraryMap['itineraryId'],
      type: type,
      style: style,
      name: itineraryMap['name'],
      transportation: itineraryMap['transportation'],
      area: itineraryMap['area'],
      startDate: DateTime.parse(itineraryMap['startDate']),
      endDate: DateTime.parse(itineraryMap['endDate']),
      place: placesByDay,
    );

    return DetailDiary(
      id: data['id'],
      tag: tag,
      date: data['date'],
      title: data['title'],
      content: data['content'],
      photos: List<String>.from(data['photos']),
      account: Account.fromJson(data['account']),
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
    required Map<String, List<Place>?> place, // 키 타입을 String으로 변경
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
    required int? reviewId,
    required double? rating,
    required String? content,
    required List<String>? reviewPhotoURLList,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) =>
      _$ReviewFromJson(json);
}
