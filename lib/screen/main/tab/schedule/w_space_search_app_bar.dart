import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_text_field_with_delete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../common/widget/w_arrow.dart';

class SpaceSearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController controller;

  const SpaceSearchAppBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white, // 원하는 배경색 지정
      statusBarIconBrightness: Brightness.dark, // 아이콘의 색상 (어두운 색상일 경우 Brightness.dark)
    ));
    return SafeArea(
      child: Row(
        children: [
          Tap(
              onTap: () => Nav.pop(context),
              child: const SizedBox(
                  height: kToolbarHeight,
                  width: 56,
                  child: Arrow(
                    direction: AxisDirection.left,
                  ))),
          Expanded(
            child: TextFieldWithDelete(controller: controller,
            textInputAction: TextInputAction.search,
            texthint: '관광/맛집을 검색 해보세요.',
            deleteRightPadding: 0,).pOnly(top:6),
          ),
          IconButton(onPressed: null, icon: Icon(Icons.search)).pOnly(right: 5, top: 6)
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
