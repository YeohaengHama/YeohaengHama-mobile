import 'package:fast_app_base/screen/client/main/tab/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fast_app_base/screen/client/main/tab/shorts/p_is_playing.dart';
import 'package:fast_app_base/screen/client/main/tab/shorts/s_shorts.dart';

class TabNavigator extends ConsumerWidget {
  const TabNavigator({
    super.key,
    required this.tabItem,
    required this.navigatorKey,
  });

  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPlaying = ref.watch(isPlayingProvider);

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) {
            return tabItem.firstPage;
          },
        );
      },
    );
  }
}
