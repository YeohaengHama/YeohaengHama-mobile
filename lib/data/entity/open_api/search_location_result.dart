  import 'package:freezed_annotation/freezed_annotation.dart';

  part 'search_location_result.freezed.dart';
  part 'search_location_result.g.dart';

  @freezed
  class SearchLocationResult with _$SearchLocationResult {
    const factory SearchLocationResult({
      required String? addr1,
      required String? addr2,
      required String contentid,
      required String contenttypeid,
      required String firstimage,
      required String mapx,
      required String mapy,
      required String title,
    }) = _SearchLocationResult;

    factory SearchLocationResult.fromJson(Map<String, dynamic> json) => _$SearchLocationResultFromJson(json);
  }
