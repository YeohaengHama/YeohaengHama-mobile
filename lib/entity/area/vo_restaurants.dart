import 'package:freezed_annotation/freezed_annotation.dart';
part 'vo_restaurants.freezed.dart';
@freezed
class Restaurant with _$Restaurant {
  const factory Restaurant(
      final int id,
      final String restaurantName,
      final String restaurantArea,
      final List<String> retaurantImages,
      ) = _Restaurant;

}
