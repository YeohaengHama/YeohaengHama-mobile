import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_detail_diary.freezed.dart';
part 'vo_detail_diary.g.dart';


@freezed
class DetailDiary with _$DetailDiary {
  const factory DetailDiary({
    required int itinerary,
    required List<String> tag,
    required DateTime date,
    required String title,
    required String content,
    required List<String> photos,
    required Account account,
    required Map<int, List<Review>>? reviews,
  }) = _DetailDiary;

  factory DetailDiary.fromJson(Map<String, dynamic> json) =>
      _$DetailDiaryFromJson(json);
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
class Review with _$Review {
  const factory Review({
    required String? placeName,
    required int contentId,
    required int contentTypeId,
    required double rating,
    required String content,
    required List<String> reviewPhotoURLList,
  }) = _Review;

  factory Review.fromJson(Map<String, dynamic> json) =>
      _$ReviewFromJson(json);
}