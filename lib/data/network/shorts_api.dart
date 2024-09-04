import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/shorts/vo_short_write.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

import '../entity/itinerary/a_check_itinerary.dart';
import '../entity/shorts/vo_shorts_comment.dart';
import '../entity/shorts/vo_shorts_read.dart';
import '../memory/itinerary/itinerary_created_provider.dart';
import '../memory/shorts/p_comment_read.dart';
import '../memory/shorts/p_get_itinerary.dart';
import '../memory/shorts/p_shorts_read.dart';
import '../memory/shorts/p_shorts_search.dart';



final shortsApiProvider = Provider<shortsApi>((ref) => shortsApi());

class shortsApi {
  final Dio _dio = Dio();
  final String baseUrl = serverUrl; // Replace with your server URL

  Future<void> uploadShorts(ShortsWrite shortWrite, WidgetRef ref) async {
    final url = '$baseUrl/shorts/uploadShorts';
    final dio = Dio();

    try {
      final filePath = shortWrite.video.replaceFirst('File: ', '').replaceAll("'", "").trim();
      final file = File(filePath); // String 경로를 File 객체로 변환
      final formData = FormData.fromMap({
        "accountId": shortWrite.accountId,
        "video": await MultipartFile.fromFile(file.path, filename: 'video.mp4'), // File 객체를 MultipartFile로 변환
        "title": shortWrite.title,
        "content": shortWrite.content,
        "itineraryId": shortWrite.itineraryId,
      });

      final response = await dio.post(
        url,
        data: formData,
      );

      if (response.statusCode == 200) {
        final data = response.data;
        await ref.read(shortsApiProvider).readShorts(ref);

        print(data);
      } else if (response.statusCode == 401) {
        print('Unauthorized');
      } else {
        print('Failed with status code: ${response.statusCode}');
        throw Exception('Failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('An exception occurred: $e');
      throw e;
    }
  }
  Future<void> readShorts(WidgetRef ref) async {
    final url = '$baseUrl/shorts/readShorts?numOfRows=100&page=0';
    final dio = Dio();

    try {
      final response = await dio.get(
        url,
      );

      if (response.statusCode == 200) {
        final data = response.data['data'];
        final shortsRead = ShortsRead.fromJson(data);
        final _shortsReadProvider = ref.read(shortsReadProvider.notifier);
        _shortsReadProvider.state = shortsRead;
        print('자:${_shortsReadProvider.state}');
        print(data);
      } else if (response.statusCode == 401) {
        print('Unauthorized');
      } else {
        print('Failed with status code: ${response.statusCode}');
        throw Exception('Failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('An exception occurred: $e');
      throw e;
    }
  }
  Future<void> searchShorts(String area, WidgetRef ref) async {
    final url = '$baseUrl/shorts/search';
    final dio = Dio();

    try {
      final formData = FormData.fromMap({
        'area': area,
        // 필요한 추가 필드를 여기에 추가할 수 있습니다.
        // 예: 'userId': account.userId,
      });

      final response = await _dio.get(
        url,
        data: formData,
      );


      if (response.statusCode == 200) {
        final data = response.data['data'];
        final shortsRead = ShortsRead.fromJson(data);
        final _shortsSearchProvider = ref.read(shortsSearchProvider.notifier);
        _shortsSearchProvider.state = shortsRead;
        print(data);
      } else if (response.statusCode == 401) {
        print('Unauthorized');
      } else {
        print('Failed with status code: ${response.statusCode}');
        throw Exception('Failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('An exception occurred: $e');
      throw e;
    }
  }
  Future<void> readComment(int shortsId, WidgetRef ref) async {
    final url = '$baseUrl/shorts/readComment?shortsId=$shortsId';
    final dio = Dio();

    try {
      final response = await dio.get(
        url,
      );

      if (response.statusCode == 200) {
        final data = response.data['data']; // JSON 데이터를 CommentList 형태로 변환
        print(data);
        final commentList = CommentList.fromJson(data);
        ref.read(commentListProvider.notifier).state = commentList;

      } else if (response.statusCode == 401) {
        print('Unauthorized');
      } else {
        print('Failed with status code: ${response.statusCode}');
        throw Exception('Failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('An exception occurred: $e');

      ref.read(commentListProvider.notifier).clearCommentList();
    }
  }
  Future<void> createComment(int shortsId, int accountId, String comment, WidgetRef ref) async {
    final url = '$baseUrl/shorts/createComment';
    final dio = Dio();

    try {
      final response = await dio.post(
        url,
        data: {
          "shortsId": shortsId,
          "accountId": accountId,
          "comment": comment
        }
      );

      if (response.statusCode == 200) {
        await ref.read(shortsApiProvider).readComment(shortsId, ref);

        print("댓글 작성 완료");

      } else if (response.statusCode == 401) {
        print('Unauthorized');
      } else {
        print('Failed with status code: ${response.statusCode}');
        throw Exception('Failed with status code: ${response.statusCode}');
      }
    } catch (e) {
      print('An exception occurred: $e');

      ref.read(commentListProvider.notifier).clearCommentList();
    }
  }
  Future<Response> getItinerary(WidgetRef ref, String id) async {
    try {
      final itineraryCreatedNotifier =
      ref.read(itineraryCreatedProvider.notifier);

      final response = await _dio.get(
        '$baseUrl/itinerary/${id}',
      );
      if (response.statusCode == 200) {
        final Map<String, dynamic> data = response.data['data'];

        final CheckItinerary checkItinerary = CheckItinerary.fromJson(data);
        ref.read(getItineraryProvider.notifier).getItinerary(checkItinerary);
        // await PostAddNewEachPickPlace(ref);

        return response;
      } else if (response.statusCode == 401) {
        print('error');
        return response;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      throw e;
    } finally {
      // container.dispose();
    }
  }
}
