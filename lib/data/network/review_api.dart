import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fast_app_base/data/entity/open_api/open_api_image.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../entity/review/vo_review_post.dart';
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
      final response = await _dio.post(
        url,
        data: {
          'contentId': review.contentId,
          'contentTypeId': review.contentType,
          'rating': review.rating,
          'content': review.content,
          'accountId': accountNotifier.state!.id,
          for (int i = 0; i < review.photos!.length; i++)
            'photos[$i]': await MultipartFile.fromFile(review.photos![i]),

        },
      );

      if (response.statusCode == 200) {
        print('회원가입 성공: ${response.data}');
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
}