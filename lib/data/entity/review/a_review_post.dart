import 'package:freezed_annotation/freezed_annotation.dart';

part 'a_review_post.freezed.dart';

@freezed
class ReviewPost with _$ReviewPost {
  factory ReviewPost(
      {
        required int contentId,
        required int contentType,
        required int rating,
        required String content,
        @Default([]) List<String>? photos, // Providing an empty list as default value
      }
      ) = _ReviewPost;

}