import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/shorts/p_is_playing.dart';
import 'package:fast_app_base/screen/client/main/tab/tab_item.dart';
import 'package:fast_app_base/screen/client/main/tab/tab_navigator.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../data/network/notification_api.dart';
import 'menu/w_menu_drawer.dart';

class MainScreen extends ConsumerStatefulWidget {
  final TabItem? initialTab;
  final String? userId;

  const MainScreen({super.key, this.initialTab, this.userId});

  @override
  ConsumerState<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends ConsumerState<MainScreen> with SingleTickerProviderStateMixin {
  late TabItem _currentTab;
  final List<TabItem> tabs = [TabItem.home, TabItem.schedule, TabItem.meeting, TabItem.shorts, TabItem.information];
  final List<GlobalKey<NavigatorState>> navigatorKeys = [];

  int get _currentIndex => tabs.indexOf(_currentTab);
  GlobalKey<NavigatorState> get _currentTabNavigationKey => navigatorKeys[_currentIndex];

  bool get extendBody => true;

  static double get bottomNavigationBarBorderRadius => 0.0;

  @override
  void initState() {
    super.initState();
    _currentTab = widget.initialTab ?? TabItem.home;
    initNavigatorKeys();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: isRootPage,
      onPopInvoked: _handleBackPressed,
      child: Scaffold(
        extendBody: extendBody,
        endDrawer: const MenuDrawer(),
        body: Container(
          color: Colors.transparent,
          padding: EdgeInsets.only(bottom: extendBody ? 60 - bottomNavigationBarBorderRadius : 0),
          child: IndexedStack(
            index: _currentIndex,
            children: tabs.mapIndexed((tab, index) {
              return Offstage(
                offstage: _currentTab != tab,
                child: TabNavigator(
                  navigatorKey: navigatorKeys[index],
                  tabItem: tab,
                ),
              );
            }).toList(),
          ),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(context),
      ),
    );
  }

  bool get isRootPage => _currentTab == TabItem.home && _currentTabNavigationKey.currentState?.canPop() == false;

  void _handleBackPressed(bool didPop) {
    if (!didPop) {
      if (_currentTabNavigationKey.currentState?.canPop() == true) {
        Nav.pop(_currentTabNavigationKey.currentContext!);
        return;
      }
      if (_currentTab != TabItem.home) {
        changeTab(tabs.indexOf(TabItem.home));
      }
    }
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black26, spreadRadius: 0, blurRadius: 1),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(bottomNavigationBarBorderRadius),
          topRight: Radius.circular(bottomNavigationBarBorderRadius),
        ),
        child: BottomNavigationBar(
          items: navigationBarItems(context),
          currentIndex: _currentIndex,
          selectedItemColor: context.appColors.text,
          unselectedItemColor: context.appColors.iconButtonInactivate,
          onTap: (index) {
            if (tabs[index] == TabItem.shorts) {
              ref.read(isPlayingProvider.notifier).setPlaying(true);
            } else {
              ref.read(isPlayingProvider.notifier).setPlaying(false);
            }
            _handleOnTapNavigationBarItem(index);
          },
          showSelectedLabels: true,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          backgroundColor: context.appColors.seedColor,
        ),
      ),
    );
  }

  List<BottomNavigationBarItem> navigationBarItems(BuildContext context) {
    return tabs.mapIndexed((tab, index) {
      return tab.toNavigationBarItem(
        context,
        isActivated: _currentIndex == index,
      );
    }).toList();
  }

  void changeTab(int index) {
    setState(() {
      _currentTab = tabs[index];
    });
  }

  void _handleOnTapNavigationBarItem(int index) {
    final oldTab = _currentTab;
    final targetTab = tabs[index];
    if (oldTab == targetTab) {
      final navigationKey = _currentTabNavigationKey;
      popAllHistory(navigationKey);
    }
    changeTab(index);
  }

  void popAllHistory(GlobalKey<NavigatorState> navigationKey) {
    final bool canPop = navigationKey.currentState?.canPop() == true;
    if (canPop) {
      while (navigationKey.currentState?.canPop() == true) {
        navigationKey.currentState!.pop();
      }
    }
  }

  void initNavigatorKeys() {
    for (final _ in tabs) {
      navigatorKeys.add(GlobalKey<NavigatorState>());
    }
  }
}
