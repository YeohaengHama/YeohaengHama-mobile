import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';


class LogInFragment extends StatelessWidget {
  const LogInFragment({super.key});

  final loginWidth = 260.0;
  final loginHeight = 40.0;
  final eyeSize = 25.0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Height(140),
          Image.asset(
            '$basePath/icon/hama.png',
            width: 200,
            height: 100,
          ),
          '여행하마'.text.bold.size(24).color(AppColors.mainPurple).make(),
          const Height(30),
          SizedBox(
            height: loginHeight,
            width: loginWidth,
            child: const TextField(
              decoration: InputDecoration(
                hintText: '아이디 입력',
                hintStyle: TextStyle(color: AppColors.forthGrey),
                border: InputBorder.none,
              ),
            ).pSymmetric(h: 10),
          ),
          SizedBox(
            width: loginWidth,
            child: const Divider(
              color: AppColors.forthGrey, // 가로선의 색상 설정
              thickness: 0.5, // 가로선의 두께 설정
            ),
          ),
          SizedBox(
            height: loginHeight,
            width: loginWidth,
            child: Stack(
              children: [
                Positioned(
                  right: 10, // 우측으로부터의 거리
                  top: (loginHeight - eyeSize) / 2,
                  child: SizedBox(
                      width: eyeSize,
                      height: eyeSize,
                      child: Image.asset('$basePath/icon/eye.png')),
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: '비밀번호 입력',
                    hintStyle: TextStyle(color: AppColors.forthGrey),
                    border: InputBorder.none,
                  ),
                ).pSymmetric(h: 10),
              ],
            ),
          ),
          const Height(20),
          Container(
            height: loginHeight + 8,
            width: loginWidth,
            decoration: BoxDecoration(
              color: AppColors.mainPurple, // 테두리 색상 설정
              borderRadius: BorderRadius.circular(10), // 테두리의 모서리를 둥글게 만듦
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
          const Height(10),
          SizedBox(
            width: loginWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: ('회원가입').text.color(AppColors.forthGrey).size(12).make(),
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
                    child: ('비밀번호 찾기').text.color(AppColors.forthGrey).size(12).make(),
                  ),
                ),
              ],
            ),
          ),
          const Height(40),
          SizedBox(
            width: loginWidth,
            child: Row(
              children: [
                Expanded(child: Image.asset('$basePath/icon/kakao.png',width: 75,height: 75,)),
                Expanded(child: Image.asset('$basePath/icon/google.png',width: 75,height: 75,)),
                Expanded(child: Image.asset('$basePath/icon/apple.png',width: 75,height: 75,))

              ],
            ),
          )
        ],
      ),
    );
  }
}
