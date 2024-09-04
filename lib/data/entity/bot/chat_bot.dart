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
    List<Map<String, double>>? other, // 수정: null 허용
  }) = _ChatbotResponse<T>;

  // 직접 fromJson 구현
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
          .map((e) => Map<String, double>.from(e as Map))
          .toList(),
    );
  }
}
@freezed
class ShowDiaryAllResult with _$ShowDiaryAllResult {
  const factory ShowDiaryAllResult({
    required String keyword,
    required List<Diary> diary,
  }) = _ShowDiaryAllResult;

  factory ShowDiaryAllResult.fromJson(Map<String, dynamic> json) => _$ShowDiaryAllResultFromJson(json);
}

@freezed
class ShowDiaryPlaceResult with _$ShowDiaryPlaceResult {
  const factory ShowDiaryPlaceResult({
    required String keyword,
    required List<Diary> diary,
  }) = _ShowDiaryPlaceResult;

  factory ShowDiaryPlaceResult.fromJson(Map<String, dynamic> json) => _$ShowDiaryPlaceResultFromJson(json);
}

@freezed
class ShowPopularAreaResult with _$ShowPopularAreaResult {
  const factory ShowPopularAreaResult({
    required String first,
    required String? second,
    required String? third,
  }) = _ShowPopularAreaResult;

  factory ShowPopularAreaResult.fromJson(Map<String, dynamic> json) => _$ShowPopularAreaResultFromJson(json);
}

@freezed
class Diary with _$Diary {
  const factory Diary({
    required int diaryId,
    required String title,
  }) = _Diary;

  factory Diary.fromJson(Map<String, dynamic> json) => _$DiaryFromJson(json);
}
