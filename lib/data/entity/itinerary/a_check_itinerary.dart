import 'package:freezed_annotation/freezed_annotation.dart';

part 'a_check_itinerary.freezed.dart';
part 'a_check_itinerary.g.dart';

@freezed
class CheckItinerary with _$CheckItinerary {
      const factory CheckItinerary({
            required String itineraryId,
            required List<String>? type,
            required List<String>? style,
            required String name,
            required String transportation,
            required String area,
            required String startDate,
            @Default('') String? expense,
            required String endDate,
            required int budgetId,
            required Account account, // Account 객체로 수정
            required Map<String, List<PlaceByDay>> placesByDay, // Map<String, List<PlaceByDay>>로 수정
            required List<SharedAccount> sharedAccount, // sharedAccount 추가
      }) = _CheckItinerary;
      //
      factory CheckItinerary.fromJson(Map<String, dynamic> json) =>
      _$CheckItineraryFromJson(json);
  // factory CheckItinerary.fromJson(Map<String, dynamic> json) {
  //           final String itineraryId = json['itineraryId'].toString(); // itineraryId를 String으로 변환
  //           return _$CheckItineraryFromJson(json..['itineraryId'] = itineraryId);
  //     }
}

@JsonSerializable()
class Account {
      final int id;
      final String nickname;
      String? photoUrl; // photoUrl을 null 허용으로 변경

      Account({
            required this.id,
            required this.nickname,
            this.photoUrl,
      });

      factory Account.fromJson(Map<String, dynamic> json) {
            // photoUrl이 null인 경우 빈 문자열로 처리
            final photoUrl = json['photoUrl'] != null ? json['photoUrl'] : '';
            return _$AccountFromJson(json..['photoUrl'] = photoUrl);
      }
}

@JsonSerializable()
class SharedAccount {
      final int id;
      final String nickname;
      String? photoUrl; // photoUrl을 null 허용으로 변경
      final String accountRole;

      SharedAccount({
            required this.id,
            required this.nickname,
            this.photoUrl,
            required this.accountRole,
      });

      factory SharedAccount.fromJson(Map<String, dynamic> json) {
            // photoUrl이 null인 경우 빈 문자열로 처리
            final photoUrl = json['photoUrl'] != null ? json['photoUrl'] : '';
            return _$SharedAccountFromJson(json..['photoUrl'] = photoUrl);
      }
}

@JsonSerializable()
class PlaceByDay {
      final String startTime;
      final String endTime;
      final String placeType;
      final String placeNum;
      final String placeName;
      final String memo;
      final int placeId;

      PlaceByDay({
            required this.startTime,
            required this.endTime,
            required this.placeType,
            required this.placeNum,
            required this.placeName,
            required this.memo,
            required this.placeId,
      });

      factory PlaceByDay.fromJson(Map<String, dynamic> json) =>
          _$PlaceByDayFromJson(json);
}
