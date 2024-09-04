import 'dart:convert';

import 'package:fast_app_base/screen/Account/s_join.dart';
import 'package:fast_app_base/screen/Account/v_kakao_web.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../../common/common.dart';
import '../../data/entity/account/vo_login.dart';
import '../../data/network/shorts_api.dart';
import '../../data/network/user_api.dart';
import 'w_text_widget.dart'; // TextWidget 파일이 있는 경로에 맞게 수정

final userApiProvider = Provider<UserApi>((ref) => UserApi());

class LogInScreen extends ConsumerStatefulWidget {
  const LogInScreen({
    Key? key,
  }) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends ConsumerState<LogInScreen> {
  final idController = TextEditingController();
  final pwController = TextEditingController();
  bool obscureText = true;

  Future<void> _loginUser() async {
    final login = LogIn(
      email: idController.text,
      pw: pwController.text,
    );

    final userApi = ref.read(userApiProvider);

    try {
      await userApi.postLoginUser(login, context, ref);

      // 다른 로직 추가
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text('계정 정보를 확인해주세요.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 140),
                Image.asset(
                  '$basePath/icon/hama.png',
                  width: 200,
                  height: 100,
                ),
                '여행하마'.text.bold.size(24).color(AppColors.mainPurple).make(),
                const SizedBox(height: 30),
                TextWidget(
                  textController: idController,
                  addText: '아이디 입력',
                  onChanged: (value) {},
                ),
                const SizedBox(
                  width: loginWidth,
                  child: Divider(
                    color: AppColors.forthGrey,
                    thickness: 0.5,
                  ),
                ),
                SizedBox(
                  height: loginHeight,
                  width: loginWidth,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 10,
                        top: (loginHeight - 30) / 2,
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: Icon(
                            obscureText ? Icons.visibility_off : Icons.visibility,
                            color: AppColors.forthGrey,
                          ),
                        ),
                      ),
                      TextWidget(
                        textController: pwController,
                        addText: '비밀번호 입력',
                        boxWidth: 200,
                        pw: obscureText,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Tap(
                  onTap: () {
                    _loginUser();
                  },
                  child: Container(
                    height: loginHeight + 8,
                    width: loginWidth,
                    decoration: BoxDecoration(
                      color: AppColors.mainPurple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        '로그인',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Pretendard',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: loginWidth,
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const JoinScreen(),
                                ),
                              );
                            },
                            child: ('회원가입')
                                .text
                                .color(AppColors.forthGrey)
                                .size(12)
                                .make(),
                          ),
                        ),
                      ),
                      const Text(
                        '|',
                        style: TextStyle(
                          color: AppColors.forthGrey,
                          fontSize: 12,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: ('비밀번호 찾기')
                              .text
                              .color(AppColors.forthGrey)
                              .size(12)
                              .make(),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),
                SizedBox(
                  width: 300,
                  child: Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => KakaoLoginWebView(),
                              ),
                            );
                          },
                          child: Image.asset(
                            '$basePath/icon/kakao.png',
                            width: 75,
                            height: 75,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          '$basePath/icon/google.png',
                          width: 75,
                          height: 75,
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          '$basePath/icon/apple.png',
                          width: 75,
                          height: 75,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



