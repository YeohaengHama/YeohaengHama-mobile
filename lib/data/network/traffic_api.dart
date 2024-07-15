import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/traffic/info_traffic_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import '../entity/traffic/vo_route_summary.dart';
import '../entity/traffic/vo_transport.dart';
import '../memory/traffic/info_car_traffic_provider.dart';
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

  Future<void> getInfoTraffic(double x1, double y1, double x2, double y2, WidgetRef ref) async {
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
        ref.read(infoTrafficProvider.notifier).setTrafficInfo(trafficInfo);
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
  Future<void> getInfoCarTraffic(double x1, double y1, double x2, double y2, WidgetRef ref) async {
    final url = '$baseUrl/openApi/getDirections/car';

    try {
      final response = await _dio.post(
        url,
        data: {
          "startX": x1,
          "startY": y1,
          "goalX": x2,
          "goalY": y2,
        },
      );

      if (response.statusCode == 200) {
        // 응답 데이터를 문자열로 변환
        final responseData = response.data.toString();
        // 문자열 데이터를 JSON으로 디코딩
        final data = jsonDecode(responseData) as Map<String, dynamic>;

        final trafastList = data['route']['trafast'] as List<dynamic>;
        final routeSummaryJson = trafastList.first as Map<String, dynamic>;

        final pathJson = routeSummaryJson['path'] as List<dynamic>;
        final path = pathJson.map((point) {
          final pointList = point as List<dynamic>;
          return RoutePoint(
            latitude: pointList[1] as double,
            longitude: pointList[0] as double,
          );
        }).toList();

        final summaryJson = routeSummaryJson['summary'] as Map<String, dynamic>;
        final routeSummary = RouteSummary(
          path: path,
          duration: summaryJson['duration'] as int,
          distance: summaryJson['distance'] as int,
          taxiFare: summaryJson['taxiFare'] as int,
        );

        final carTrafficInfo = CarTrafficInfo(trafast: [routeSummary]);

        ref.read(infoCarTrafficProvider.notifier).setTrafficInfoCar(carTrafficInfo);
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
