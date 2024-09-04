

import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/Account/s_log_in.dart';
import 'package:fast_app_base/screen/client/main/menu/my_option/s/s_profile_setting.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../common/widget/w_menu.dart';
import '../../../../../data/memory/bot/p_chat.dart';
import '../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../data/memory/account/user_provider.dart';

import 'package:http/http.dart' as http;
class MyOptionScreen extends ConsumerStatefulWidget {
  const MyOptionScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MyOptionScreen> createState() => _MyOptionScreenState();
}

class _MyOptionScreenState extends ConsumerState<MyOptionScreen> {


  @override
  Widget build(BuildContext context) {

    final _account = ref.watch(accountProvider.notifier);
    final _itinerary = ref.watch(itineraryCheckProvider.notifier);
    final _chatNotifier = ref.read(chatProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
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
              _itinerary.reset();
              _account.reset();
              _chatNotifier.reset();
              Nav.push(const LogInScreen());
            },
          ).pSymmetric(v:5),
          const Line(),

        ],
      ).pSymmetric(h: 20,v: 10
      ),
    );
  }
}
