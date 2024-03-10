import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_text_field_with_delete.dart';
import 'package:fast_app_base/screen/main/search/content_type_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../common/widget/w_arrow.dart';
import '../../../data/entity/open_api/open_api_area.dart';
import '../../../data/network/area_api.dart';

class AreaSearchAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final TextEditingController controller;
  final String hintText;


  const AreaSearchAppBar(  {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context, WidgetRef ref) {


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
          IconButton(onPressed: (){}, icon: Icon(Icons.search)).pOnly(right: 5, top: 6)
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
