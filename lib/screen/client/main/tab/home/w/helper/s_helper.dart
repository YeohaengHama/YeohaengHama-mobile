import 'package:fast_app_base/screen/client/main/tab/home/w/helper/f_helper_map.dart';
import 'package:flutter/material.dart';

import '../../../../../../../common/common.dart';

class HelperScreen extends StatelessWidget {
  const HelperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        const HelperMapFragment(),
        SafeArea(
          child: Positioned(

            child: Row(
              children: [
                Tap(onTap: () { Nav.pop(context); },
                child: Icon(Icons.arrow_back_ios_rounded).pOnly(left: 25)),
                spacer,
                Tap(onTap: () { Nav.pop(context); },
                    child: Icon(Icons.wallet_rounded).pOnly(right: 25))
              ],
            ),
          ),
        ),]),
    );
  }
}
