import 'package:fast_app_base/screen/client/main/tab/home/w/helper/f_helper_map.dart';
import 'package:flutter/material.dart';

import '../../../../../../../common/common.dart';

class HelperScreen extends StatelessWidget {
  const HelperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Tap(onTap: () {
          Nav.pop(context);
        },
        child: Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: HelperMapFragment(),
    );
  }
}
