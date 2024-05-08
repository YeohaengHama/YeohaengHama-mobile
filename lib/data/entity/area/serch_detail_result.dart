import 'package:fast_app_base/data/entity/area/search_simple_toursim_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'serch_detail_result.freezed.dart';
part 'serch_detail_result.g.dart';



@freezed
class SearchDetailResult with _$SearchDetailResult {
  const factory SearchDetailResult(
  {
    required String contentId,
    required String contentTypeId,
    required String title,
    required String addr1,
    required String addr2,
    required String overView,
    required String mapX,
    required String mapY,


    }
      ) = _SearchDetailResult;

  factory SearchDetailResult.fromJson(Map<String, dynamic> json) =>
      _$SearchDetailResultFromJson(json);
}
