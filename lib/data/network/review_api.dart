import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fast_app_base/data/entity/open_api/open_api_image.dart';
import 'package:fast_app_base/data/memory/review/review_show_all_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/constants.dart';
import '../../screen/client/main/search/provider/is_loading_provider.dart';
import '../entity/review/a_review_post.dart';

import '../entity/review/a_review_show_all.dart';
import '../entity/review/vo_check_write_review.dart';
import '../entity/review/vo_review_show_account_.dart';
import '../memory/review/review_show_account.dart';
import '../memory/account/user_provider.dart';


final reviewApiProvider = Provider<ReviewApi>((ref) => ReviewApi());

class ReviewApi {
  final Dio _dio = Dio();
  final String baseUrl =
      serverUrl;

  Future<void> postReview(ReviewPost review, WidgetRef ref) async {
    final url = '$baseUrl/review/join';
    final accountNotifier = ref.read(accountProvider.notifier);

    try {
      FormData formData = FormData.fromMap({
        'contentId': review.contentId,
        'placeName' : review.placeName,
        'contentTypeId': review.contentType,
        'rating': review.rating,
        'content': review.content,
        'accountId': accountNotifier.state!.id,
        for (int i = 0; i < review.photos!.length; i++)
          'photos[$i]': await MultipartFile.fromFile(review.photos![i]),
      });

      final response = await _dio.post(
        url,
        data: formData,
        options: Options(contentType: 'multipart/form-data'),
      );

      if (response.statusCode == 200) {
        print('리뷰쓰기 성공: ${response.data}');
      } else if (response.statusCode == 401) {
        print('error');
        return null;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    }
  }
  Future<bool> checkWriteReivew(
      CheckWriteReview checkWriteReivew, WidgetRef ref) async {
    try {
      final accountNotifier = ref.read(accountProvider.notifier);

      final response = await _dio.post(
          '$baseUrl/review/check?accountId=${accountNotifier.state!.id}',
          data: {
            'accountId': accountNotifier.state!.id,
            'contentId': checkWriteReivew.placeNum,
            'contentTypeId': checkWriteReivew.contentTypeId
          });

      if (response.statusCode == 200) {
        final responseData = response.data as Map<String, dynamic>;
        final bool isWrited = responseData['data'] ?? false;
        return isWrited;
      } else if (response.statusCode == 401) {
        print('error');
        return false;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    } finally {
      // container.dispose(); // ProviderContainer 정리 - 이 부분을 주석 처리하거나 삭제
    }
  }
  Future<void> showAllReview( int id, int type, WidgetRef ref) async {
    final url = '$baseUrl/review/showAll';

    try {
      final response = await _dio.post(
        url,
        data: {
          'contentId': id,
          'contentTypeId': type,
        },
      );

      if (response.statusCode == 200) {
        final jsonData = response.data['data'] as List<dynamic>;
        if (jsonData.isEmpty) {

          ref.read(ReviewShowAllListProvider.notifier).clearReviews();

          print('리뷰 목록이 비어있습니다.');
        } else {
          final reviews = jsonData
              .map((json) =>
              ReviewShowAll.fromJson(json as Map<String, dynamic>))
              .toList();
          ref.read(ReviewShowAllListProvider.notifier).addReview(reviews);
          print('리뷰 불러오기 성공: $reviews');

        }
      } else if (response.statusCode == 401) {
        print('error');
        return null;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      ref.read(ReviewShowAllListProvider.notifier).clearReviews();
      print('리뷰 목록이 비어있습니다.');
    }
  }
  Future<void> showReviewAccount(int accountId, WidgetRef ref) async {
    final url = '$baseUrl/review/showAccountAll';

    try {
      final response = await _dio.post(
        url,
        data:
          {
            'accountId' : accountId
          }
      );

      if (response.statusCode == 200) {
        final jsonData = response.data['data'] as List<dynamic>;
        final reviews = jsonData
            .map((json) =>
            ReviewShowAccount.fromJson(json as Map<String, dynamic>))
            .toList();
        ref.read(reviewShowAccountProvider.notifier).addReview(reviews);
      } else if (response.statusCode == 401) {
        print('error');
        return null;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print(e);

    }
  }
}