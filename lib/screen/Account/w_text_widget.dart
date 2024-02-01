import 'package:flutter/material.dart';

import '../../common/common.dart';

class TextWidget extends StatelessWidget {

  final TextEditingController textController;
  final String addText;
  final double? boxWidth;
  final bool pw; // 새로 추가한 pw 변수
  final void Function(String) onChanged; // 수정된 onChanged 타입

  const TextWidget({
    Key? key, // key 변수 수정
    required this.textController,
    required this.addText,
    this.boxWidth = loginWidth,
    this.pw = false,
    required this.onChanged, // onChanged 타입 수정
  }) : super(key: key); // super(key: key) 추가

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: loginHeight,
      width: boxWidth,
      child: TextField(
        controller: textController,
        obscureText: pw,
        onChanged: onChanged, // onChanged 적용
        decoration: InputDecoration(
          hintText: addText,
          hintStyle: const TextStyle(color: AppColors.forthGrey),
          border: InputBorder.none,
        ),
      ).pSymmetric(h: 10),
    );
  }
}
