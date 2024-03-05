import 'package:dio/dio.dart';
import 'package:fast_app_base/data/entity/account/vo_account.dart';
import 'package:fast_app_base/data/entity/account/vo_login.dart';
import 'package:fast_app_base/data/network/result/api_error.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../screen/main/s_main.dart';
import '../memory/user_provider.dart';
import '../simple_result.dart';

final userApiProvider = Provider<UserApi>((ref) => UserApi());

class UserApi {
  final Dio _dio = Dio();
  final String baseUrl =
      'https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api/';

  Future<void> postAccountData(Account account) async {
    final url = '$baseUrl/account/join';

    try {
      final response = await _dio.post(
        url,
        data: {
          'email': account.email,
          'pw': account.pw,
          'photoUrl': account.photoUrl,
          'nickName': account.nickName,
        },
      );

      if (response.statusCode == 200) {
        print('회원가입 성공: ${response.data}');
      } else if (response.statusCode == 409) {
        // 중복된 이메일인 경우
        print('중복된 이메일로 회원가입 불가');
        // 여기에서 사용자에게 알림 등을 보여줄 수 있습니다.
      } else {
        print('회원가입 실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
    }
  }


  Future<void> postLoginUser(LogIn logIn, BuildContext context) async {
    try {
      final response = await _dio.post(
        '$baseUrl/account/login',
        data: {
          'email': logIn.email,
          'pw': logIn.pw,
        },
      );

      if (response.statusCode == 200) {
        final loggedInUserId = response.data['accountId'] as String?;

        print('로그인 성공: $loggedInUserId');

        // 다른 화면으로 이동 또는 필요한 작업 수행
        // 예시로 MainScreen으로 이동
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MainScreen(),
          ),
        );
      } else if (response.statusCode == 401) {
        // 로그인 실패 처리
      } else {
        print('로그인 실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
      // 예외 발생 시에도 Future를 반환하여 호출자에게 예외 정보를 전달할 수 있도록 합니다.
      throw e;
    }
  }


  Future<SimpleResult<T, ApiError>> tryRequest<T>(
      Future<SimpleResult<T, ApiError>> Function() apiLogic) async {
    try {
      return await apiLogic();
    } catch (e) {
      return ApiError.createErrorResult(e);
    }
  }
}
