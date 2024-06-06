import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import '../entity/traffic/vo_transport.dart';
import '../memory/traffic/transport_provider.dart';


final trafficApiProvider = Provider<TrafficApi>((ref) => TrafficApi());

class TrafficApi {
  final Dio _dio = Dio();
  final String baseUrl = serverUrl; // Replace with your server URL

  Future<void> getTransportInfo(double x1, double y1, double x2, double y2, WidgetRef ref) async {
    final url = '$baseUrl/openApi/getDirections/transport';

    try {
      final response = await _dio.post(

        url,
        data: {
          "sx": x1,
          "sy": y1,
          "ex": x2,
          "ey": y2,
          "searchPathType": "0"
        },
      );

      if (response.statusCode == 200) {
        final data = response.data;
        Map<String, dynamic> responseData;
        if (data is String) {
          // 만약 JSON이 문자열로 반환된다면, 이를 파싱
          String responseDataString = data
              .toString()
              .replaceAll('<xmp>', '')
              .replaceAll('</xmp>', '');
          responseData = json.decode(responseDataString);
        } else if (data is Map<String, dynamic>) {
          responseData = data;
        } else {
          throw Exception('Unexpected data format');
        }
        final trafficInfo = TrafficInfo.fromJson(responseData);
        ref.read(trafficInfoProvider.notifier).setTrafficInfo(trafficInfo);
        print(ref.read(trafficInfoProvider).value);
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
}
