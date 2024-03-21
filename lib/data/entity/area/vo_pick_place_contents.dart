import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_pick_place_contents.freezed.dart';

@freezed
class PickPlaceContents with _$PickPlaceContents {
  const factory PickPlaceContents({
    required String contentId,
    required String contentTypeId,
    required String title,
    required String firstImage,
}
     
      
      ) = _PickPlaceContents;
  
}
