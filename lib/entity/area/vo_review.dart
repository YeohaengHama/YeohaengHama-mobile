import 'package:fast_app_base/entity/area/vo_tourism.dart';
import 'package:fast_app_base/entity/area/vo_tourism_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/vo_user.dart';
part 'vo_review.freezed.dart';

@freezed
class Review with _$Review {
  const factory Review({
    required Tourism tourism,
    required int id,
    required User user,
    required double score,
    required DateTime wirteTime,
    @Default([]) List<String>? Images,
    required String contents
}

      ) = _Review;

}
