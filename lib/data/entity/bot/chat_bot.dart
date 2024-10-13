import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_bot.freezed.dart';
part 'chat_bot.g.dart';
@freezed
class ChatbotResponse<T> with _$ChatbotResponse<T> {
  @JsonSerializable(genericArgumentFactories: true)
  const factory ChatbotResponse({
    required String question,
    required String answer,
    required String type,
    required T? result,
    List<Other>? other, // 수정된 Other 타입의 리스트
  }) = _ChatbotResponse<T>;

  factory ChatbotResponse.fromJson(
      Map<String, dynamic> json,
      T Function(Object? json) fromJsonT,
      ) {
    return ChatbotResponse<T>(
      question: json['question'] as String,
      answer: json['answer'] as String,
      type: json['type'] as String,
      result: json['result'] == null ? null : fromJsonT(json['result']),
      other: json['other'] == null
          ? null
          : (json['other'] as List<dynamic>)
          .map((e) => Other.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

@freezed
class Other with _$Other {
  @JsonSerializable()
  const factory Other({
    required Map<String, double> map, // Map 형태로 처리
  }) = _Other;

  // factory Other.fromJson(Map<String, dynamic> json) => _$OtherFromJson(json);

  factory Other.fromJson(Map<String, dynamic> json) {
    // JSON에서 Map<String, double>으로 변환
    return Other(map: Map<String, double>.from(json));
  }

}

@freezed
class Place with _$Place {
  const factory Place({
    required String addr1,
    String? addr2,
    required String contentid,
    required String contenttypeid,
    String? tel,
    required String title,
    String? firstimage,
    String? firstimage2,
    required String mapx,
    required String mapy,
  }) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}

@freezed
class Shorts with _$Shorts {
  const factory Shorts({
    required int id,
    required String title,
    required String videoUrl,
  }) = _Shorts;

  factory Shorts.fromJson(Map<String, dynamic> json) => _$ShortsFromJson(json);
}

@freezed
class Itinerary with _$Itinerary {
  const factory Itinerary({
    required int id,
    required String area,
    required String name,
  }) = _Itinerary;

  factory Itinerary.fromJson(Map<String, dynamic> json) => _$ItineraryFromJson(json);
}

@freezed
class Diary with _$Diary {
  const factory Diary({
    required int id,
    required String title,
    required String content,
  }) = _Diary;

  factory Diary.fromJson(Map<String, dynamic> json) => _$DiaryFromJson(json);
}

@freezed
class RandomPlace with _$RandomPlace {
  const factory RandomPlace({
    required String playNum,
    required String playType,
    required String addr1,
    required String name,
    String? image,
  }) = _RandomPlace;

  factory RandomPlace.fromJson(Map<String, dynamic> json) => _$RandomPlaceFromJson(json);
}

@freezed
class RandomArea with _$RandomArea {
  const factory RandomArea({
    required String area,
  }) = _RandomArea;

  factory RandomArea.fromJson(Map<String, dynamic> json) => _$RandomAreaFromJson(json);
}
