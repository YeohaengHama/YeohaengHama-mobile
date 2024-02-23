import 'package:fast_app_base/entity/area/vo_restaurants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'vo_restaurants_detail.freezed.dart';
@freezed
class RestaurantsDetail with _$RestaurantsDetail {
  const factory RestaurantsDetail({
      required Restaurant restaurant,
      required String content,
  }) = _RestaurantsDetail;
}
