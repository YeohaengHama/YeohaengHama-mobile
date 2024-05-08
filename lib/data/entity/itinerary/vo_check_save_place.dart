import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_check_save_place.freezed.dart';

@freezed
class CheckSavePlaceVo with _$CheckSavePlaceVo {
  const factory CheckSavePlaceVo(
      final bool isPick, 
      ) = _CheckSavePlaceVo;
  
}

