import 'package:fast_app_base/entity/area/vo_restaurants.dart';
import 'package:fast_app_base/entity/area/vo_tourism.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../area/vo_area.dart';

part 'vo_schedule.freezed.dart';


@freezed
class Schedule with _$Schedule {

  factory Schedule({
      required List<DateTime> days,
    required HamaArea? area,
      List<Restaurant>? pickRestaurant,
      List<Tourism>? pickTourism,
      List<dynamic>? pickMyArea,}
      ) = _Schedule;

}
