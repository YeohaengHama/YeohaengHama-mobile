import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fast_app_base/data/entity/open_api/open_api_image.dart';
import 'package:fast_app_base/data/memory/review/review_show_all_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../entity/review/a_review_post.dart';

import '../entity/review/a_review_show_all.dart';
import '../memory/user_provider.dart';


final reviewApiProvider = Provider<ReviewApi>((ref) => ReviewApi());

class ReviewApi {
  final Dio _dio = Dio();
  final String baseUrl =
      'https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api';

  Future<void> postReview(ReviewPost review, WidgetRef ref) async {
    final url = '$baseUrl/review/join';
    final accountNotifier = ref.read(accountProvider.notifier);

    try {
      FormData formData = FormData.fromMap({
        'contentId': review.contentId,
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
}