import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_text_field_with_delete.dart';
import 'package:flutter/material.dart';
import '../../../common/widget/w_arrow.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController controller;
  final String hintText;

  const SearchAppBar({super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
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
            texthint: hintText,
            deleteRightPadding: 0,).pOnly(top:6),
          ),
          const IconButton(onPressed: null, icon: Icon(Icons.search)).pOnly(right: 5, top: 6)
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
