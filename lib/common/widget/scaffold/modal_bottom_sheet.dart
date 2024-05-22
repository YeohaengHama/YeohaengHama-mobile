import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class BottomDialog extends StatelessWidget {
  final Widget body;

  const BottomDialog({required this.body});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: Colors.white, // 모달 배경색
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), // 모달 좌상단 라운딩 처리
          topRight: Radius.circular(10), // 모달 우상단 라운딩 처리
        ),
      ),
      child: SingleChildScrollView( // SingleChildScrollView로 body를 감싸줍니다.
        child: body, // 모달 내부 디자인 영역
      ).pSymmetric(v: 20,h:30).pOnly(bottom: 30),
    );
  }
}
