import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../common/constants.dart';
import '../../data/entity/account/vo_current_account.dart';
import '../client/main/s_main.dart';
import '../../data/memory/account/user_provider.dart';

class KakaoLoginWebView extends ConsumerStatefulWidget {
  @override
  _KakaoLoginWebViewState createState() => _KakaoLoginWebViewState();
}

class _KakaoLoginWebViewState extends ConsumerState<KakaoLoginWebView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _initializeWebView();
  }

  void _initializeWebView() {
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: _onPageFinished,
        ),
      )
      ..loadRequest(
        Uri.parse('https://kauth.kakao.com/oauth/authorize?client_id=a9d1711e66ed62d5be76957294ab0a9f&redirect_uri=$serverUrl/kakao/login&response_type=code'),
      );
  }

  Future<void> _onPageFinished(String url) async {
    // 페이지 로딩이 완료된 후 HTML 내용을 가져옴
    final String htmlContent = await _controller.runJavaScriptReturningResult(
      "document.documentElement.innerText",
    ) as String;

    // HTML 내용에서 JSON 텍스트를 파싱
    try {
      final jsonResponse = json.decode(htmlContent);
      if (jsonResponse['success'] == true) {
        final data = jsonResponse['data'];
        final int userId = data['id'];
        final String nickname = data['nickname'];
        final String photoUrl = data['photoUrl'];
        final String accountRole = data['accountRole'];

        // 데이터 저장 또는 다음 로직 수행
        print("User ID: $userId");
        print("Nickname: $nickname");
        print("Photo URL: $photoUrl");
        print("Account Role: $accountRole");

        // WebView를 닫고, 필요한 데이터를 이전 화면으로 전달하거나 다른 로직 처리
        Navigator.of(context).pop(jsonResponse);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: AppColors.mainPurple,
            content: Text(
              "$nickname님 반가워요 여행하마와 함께 떠나볼까요?💜",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        );

        final currentAccount = CurrentAccount(
          id: userId.toString(),
          nickName: nickname,
          photoUrl: photoUrl,
        );

        // Riverpod Provider를 사용하여 상태 업데이트
        ref.read(accountProvider.notifier).addCurrentAccount(currentAccount);

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MainScreen(userId: userId.toString()),
          ),
        );
      }
    } catch (e) {
      print("Error parsing JSON: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kakao Login"),
      ),
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}
