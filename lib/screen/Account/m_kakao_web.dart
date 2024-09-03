// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:provider/provider.dart';
//
// class KakaoLoginViewModel extends ChangeNotifier {
//   WebViewController? _controller;
//   String? _htmlContent;
//
//   WebViewController? get controller => _controller;
//   String? get htmlContent => _htmlContent;
//
//   void setController(WebViewController controller) {
//     _controller = controller;
//     notifyListeners();
//   }
//
//   void loadWebView() {
//     _controller?.loadUrl('https://kauth.kakao.com/oauth/authorize?client_id=a9d1711e66ed62d5be76957294ab0a9f&redirect_uri=https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api/kakao/login&response_type=code');
//   }
//
//   Future<void> onPageFinished(String url) async {
//     if (url.startsWith("https://port-0-yeohaenghama-backend-dc9c2nlsmwen6i.sel5.cloudtype.app/api/kakao/login")) {
//       final String? jsonString = await _controller?.runJavaScriptReturningResult(
//         "document.documentElement.innerText",
//       ) as String?;
//
//       if (jsonString != null) {
//         try {
//           final decodedJsonString = utf8.decode(jsonString.runes.toList());
//           final jsonResponse = json.decode(decodedJsonString);
//
//           if (jsonResponse['success'] == true) {
//             final data = jsonResponse['data'];
//             final int userId = data['id'];
//             final String nickname = data['nickname'];
//             final String photoUrl = data['photoUrl'];
//             final String accountRole = data['accountRole'];
//
//             print("User ID: $userId");
//             print("Nickname: $nickname");
//             print("Photo URL: $photoUrl");
//             print("Account Role: $accountRole");
//
//             // 데이터를 View로 전달
//             _htmlContent = jsonString;
//             notifyListeners();
//           }
//         } catch (e) {
//           print("Error parsing JSON: $e");
//         }
//       }
//     }
//   }
// }
