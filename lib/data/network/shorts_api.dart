import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/shorts/vo_short_write.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';

import '../entity/shorts/vo_shorts_comment.dart';
import '../entity/shorts/vo_shorts_read.dart';
import '../memory/shorts/p_comment_read.dart';
import '../memory/shorts/p_shorts_read.dart';



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
}
