import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/menu/my_option/s/s_profile_setting.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/widget/w_menu.dart';
import '../../../../data/network/diary_api.dart';

class MyOptionScreen extends ConsumerStatefulWidget {
  const MyOptionScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MyOptionScreen> createState() => _MyOptionScreenState();
}

class _MyOptionScreenState extends ConsumerState<MyOptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
            setState(() {
              // 데이터를 새로 고침하는 작업을 수행합니다.
              final diaryApi = ref.read(diaryApiProvider);
              diaryApi.showAllDiary(ref);
            });// 뒤로 가기 기능 구현
          },
        ),
        title: '설정'.text.size(18).make(),
        centerTitle: false,
      ),
      body:
      Column(
        children: [

          MenuWidget(
            '프로필 설정',
            textSize: 20,
            onTap: () async {

              Nav.push(const ProfileSettingScreen());
            },
          ).pOnly(bottom: 5),
          const Line(),
          MenuWidget(
            '알림',
            textSize: 20,
            onTap: () async {
              Nav.pop(context);
              Nav.push(const MyOptionScreen());
            },
          ).pSymmetric(v:5),
          const Line(),
          MenuWidget(
            '회원탈퇴',
            textSize: 20,
            onTap: () async {
              Nav.pop(context);
              Nav.push(const MyOptionScreen());
            },
          ).pSymmetric(v:5),
          const Line(),
          MenuWidget(
            '로그아웃',
            textSize: 20,
            onTap: () async {
              Nav.pop(context);
              Nav.push(const MyOptionScreen());
            },
          ).pSymmetric(v:5),
          const Line(),

        ],
      ).pSymmetric(h: 20,v: 10
      ),
    );
  }
}
