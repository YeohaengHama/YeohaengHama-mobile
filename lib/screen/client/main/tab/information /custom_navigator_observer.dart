import 'package:flutter/material.dart';

class CustomNavigatorObserver extends NavigatorObserver {
  void Function()? onPopTwoTimesAndAtInformationFragment;

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);

    // 이전 페이지가 InformationFragment인지 확인하고 두 번 pop 되었는지 확인
    if (onPopTwoTimesAndAtInformationFragment != null) {
      if (previousRoute?.settings.name == '/information') {
        onPopTwoTimesAndAtInformationFragment?.call();
      }
    }
  }
}
