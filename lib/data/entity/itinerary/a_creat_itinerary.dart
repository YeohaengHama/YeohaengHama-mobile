import 'package:freezed_annotation/freezed_annotation.dart';

part 'a_creat_itinerary.freezed.dart';

@freezed
class CreateItinerary with _$CreateItinerary {
  const factory CreateItinerary(
  {
    required int id,
    required String name,
    required List<String> type,
    required List<String> style,
    @Default('Bus')  String? transportation,
    required String area,
    required String startDate,
    required String endDate,
    @Default('0')  String? expense,
}
      ) = _CreateItinerary;
  
}
