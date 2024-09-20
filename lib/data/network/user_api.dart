import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/account/vo_account.dart';
import 'package:fast_app_base/data/entity/account/vo_current_account.dart';
import 'package:fast_app_base/data/entity/account/vo_login.dart';
import 'package:fast_app_base/data/network/api_error.dart';
import 'package:fast_app_base/screen/manager/s_manager.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../screen/client/main/s_main.dart';
import '../entity/account/show_all_account.dart';
import '../entity/open_api/open_api_area.dart';
import '../memory/account/all_account_provider.dart';
import '../memory/account/user_provider.dart';
import '../simple_result.dart';
import 'itinerary_api.dart';

final userApiProvider = Provider<UserApi>((ref) => UserApi());

class UserApi {
  final Dio _dio = Dio();
  final String baseUrl =
      serverUrl;



  Future<void> postAccountData(Account account) async {
    final url = '$baseUrl/account/join';

    try {
      FormData formData = FormData();

      formData.fields.addAll([
        MapEntry('email', account.email),
        MapEntry('pw', account.pw),
        MapEntry('nickname', account.nickname),
      ]);

      if (account.file != null) {
        formData.files.add(MapEntry('file', await MultipartFile.fromFile(account.file!)));
      }

      final response = await Dio().post(
        url,
        data: formData,
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


  Future<void> postLoginUser(LogIn logIn, BuildContext context, WidgetRef ref) async {
    final accountNotifier = ref.read(accountProvider.notifier);

    try {
      final response = await _dio.post(
        '$baseUrl/account/login',
        data: {
          'email': logIn.email,
          'pw': logIn.pw,
        },
      );

      if (response.statusCode == 200) {
        final data = response.data['data'];

        final id = data['id'].toString();
        final nickName = data['nickname'];
        final photoUrl = data['photoUrl'];
        print('로그인 성공: id=$id, nickName=$nickName, photoUrl=$photoUrl');
        if(id != null && id != "null"){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: AppColors.mainPurple,
            content: Text(
              "$nickName님 반가워요 여행하마와 함께 떠나볼까요?💜",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ); }
        final currentAccount = CurrentAccount(id: id, nickName: nickName, photoUrl: photoUrl);
        accountNotifier.addCurrentAccount(currentAccount);



        data['role'] != 'ACCOUNT'
            ? Nav.push(ManagerScreen())
            : Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MainScreen(userId: id),
          ),
        );

        // 다른 화면으로 이동 또는 필요한 작업 수행
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

  Future<Response> postSearchArea(OpenApiArea openApiArea) async {
    try {
      final response = await _dio.post(
        '$baseUrl/openApi/searchArea',
        data: {
          'numOfRows': openApiArea.numOfRows,
          'page': openApiArea.page,
          'keyword': openApiArea.keyword,
          'contentTypeId': openApiArea.contentTypeId,
          'mobileOS': openApiArea.mobileOS,
        },
      );

      if (response.statusCode == 200) {
        // 성공적인 응답 데이터를 Dart Map으로 변환
        Map<String, dynamic> responseData = json.decode(response.data);
        // final List<dynamic> items = body['items']['item'];
        //
        // // 예시: 각 항목의 addr1 값을 출력
        // for (var item in items) {
        // print('addr1: ${item['addr1']}');
        // }

        // 원하는 정보에 접근하여 출력 (예시: addr1 값 출력)
        String addr1 = responseData['response']['body']['items']['item'][0]['addr1'];
        print('주소1: $addr1');

        return response;
      } else if (response.statusCode == 401) {
        return response;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
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

  Future<void> handleKakaoLogin(String code) async {
    final String tokenUrl = 'https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api/kakao/login';

    final Map<String, dynamic> data = {
      'code': code,
    };

    try {
      final Dio dio = Dio();
      final Response response = await dio.post(
        tokenUrl,
        data: data,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = response.data;
        final bool success = jsonResponse['success'];
        if (success) {
          final Map<String, dynamic> userData = jsonResponse['data'];
          // 여기서 반환된 데이터를 저장할 수 있습니다.
          final int id = userData['id'];
          final String nickname = userData['nickname'];
          final String photoUrl = userData['photoUrl'];
          print('카카오톡 로그인 성공! ID: $id, 닉네임: $nickname, 프로필 사진 URL: $photoUrl');
        } else {
          final String message = jsonResponse['message'];
          print('카카오톡 로그인 실패: $message');
        }
      } else {
        print('카카오톡 로그인 요청 실패 - 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('카카오톡 로그인 요청 중 오류 발생: $e');
    }
  }

  Future<void> updateAccount(CurrentAccount account, WidgetRef ref) async {
    final url = '$baseUrl/account/update';
    final accountNotifier = ref.read(accountProvider.notifier);
    try {
      FormData formData = FormData();

      formData.fields.addAll([
        MapEntry('id', account.id),
        MapEntry('nickname', account.nickName),
      ]);

      if (account.photoUrl != null) {
        formData.files.add(MapEntry('photo', await MultipartFile.fromFile(account.photoUrl!)));
      }

      final response = await Dio().post(
        url,
        data: formData,
      );

      if (response.statusCode == 200) {
        print('회원정보 변경 성공: ${response.data}');
        print('회원정보 변경 성공: ${response.data}');
        final responseData = response.data['data'];
        final currentAccount = CurrentAccount(
          id: responseData['id'].toString(),
          nickName: responseData['nickname'],
          photoUrl: responseData['photoUrl'],
        );
        accountNotifier.addCurrentAccount(currentAccount);

      }else {
        print('회원정보 변경 실패: ${response.statusCode}');
      }
    } catch (e) {
      print('예외가 발생했습니다: $e');
    }
  }

  Future<void> showAllAccount(WidgetRef ref) async {
    final url = '$baseUrl/account/showAll';

    try {
      final response = await _dio.post(
        url,
      );

      if (response.statusCode == 200) {
        List<dynamic> data = response.data['data'];
        List<ShowAllAccount> accounts = data.map((account) => ShowAllAccount.fromJson(account)).toList();
        print(accounts);
        final accountProvider = ref.read(allAccountProvider.notifier);
        accountProvider.addAccount(accounts);
      } else if (response.statusCode == 401) {
        print('error');
        return null;
      } else {
        print('실패. 상태 코드: ${response.statusCode}');
        throw Exception('실패. 상태 코드: ${response.statusCode}');
      }
    } catch (e) {
      print('일기 목록이 비어있습니다.');
    }
  }

}
