import 'package:freezed_annotation/freezed_annotation.dart';
part 'serch_detail.g.dart';

part 'serch_detail.freezed.dart';

@freezed
class SearchDeatail with _$SearchDeatail {
  const factory SearchDeatail(
  {required String contentId,
  required String contentTypeId,
    required String numOfRows,
    required String page,
    required String mobileOs}
      ) = _SearchDeatail;

  factory SearchDeatail.fromJson(Map<String, dynamic> json) =>
      _$SearchDeatailFromJson(json);
}
