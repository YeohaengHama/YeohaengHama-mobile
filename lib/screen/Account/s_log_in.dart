import 'package:fast_app_base/screen/Account/s_join.dart';
import 'package:fast_app_base/screen/main/s_main.dart';
import 'package:fast_app_base/screen/main/tab/home/f_home.dart';
import 'package:flutter/material.dart';
import '../../common/common.dart';
import 'w_text_widget.dart'; // TextWidget 파일이 있는 경로에 맞게 수정

class LogInScreen extends StatefulWidget {
  const LogInScreen({
    super.key,
  });

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final idController = TextEditingController();
  final pwController = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // 배경색 설정
      body: Center(
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
                          obscureText = !obscureText; // 눈 아이콘 클릭시 상태 변경
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
              onTap: () { Nav.push(const MainScreen()); },
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
                                builder: (context) => const JoinScreen()),
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
              width: loginWidth,
              child: Row(
                children: [
                  Expanded(
                      child: Image.asset(
                    '$basePath/icon/kakao.png',
                    width: 75,
                    height: 75,
                  )),
                  Expanded(
                      child: Image.asset(
                    '$basePath/icon/google.png',
                    width: 75,
                    height: 75,
                  )),
                  Expanded(
                      child: Image.asset(
                    '$basePath/icon/apple.png',
                    width: 75,
                    height: 75,
                  )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
