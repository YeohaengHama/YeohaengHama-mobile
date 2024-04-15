import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/screen/main/menu/my_trip/s_my_trip.dart';
import 'package:fast_app_base/screen/opensource/s_opensource.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get/get_utils/src/extensions/string_extensions.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../../../screen/dialog/d_message.dart';
import '../../../common/common.dart';
import '../../../common/language/language.dart';
import '../../../common/theme/theme_util.dart';
import '../../../common/widget/w_mode_switch.dart';
import '../../../data/memory/user_provider.dart';

class MenuDrawer extends ConsumerStatefulWidget {
  static const minHeightForScrollView = 380;


  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends ConsumerState<MenuDrawer> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = context.statusBarHeight;


    return Material(
      color: Colors.transparent,
      child: Container(
        width: 300,
        height: double.infinity,
        padding: EdgeInsets.only(top: statusBarHeight),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
            color: context.colors.background),
        child: isSmallScreen(context)
            ? SingleChildScrollView(
                child: getMenus(context),
              )
            : getMenus(context),
      ),
    );
  }

  bool isSmallScreen(BuildContext context) =>
      context.deviceHeight < MenuDrawer.minHeightForScrollView;

  Container getMenus(BuildContext context) {
    final accountNotifier = ref.read(accountProvider.notifier).state!;
    return Container(
      constraints: BoxConstraints(minHeight: context.deviceHeight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: IconButton(
                  icon: const Icon(EvaIcons.close),
                  onPressed: () {
                    closeDrawer(context);
                    },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.notifications_none,
                  color: context.appColors.drawerText,
                ),
              ),
            ],
          ).pOnly(),
          Center(
            child: accountNotifier.photoUrl != null
                ? ClipOval(
              child: CachedNetworkImage(
                imageUrl: accountNotifier.photoUrl!,
                height: 120,
              ),
            )
                : ClipOval(
                  child: Image.asset(
                                '$basePath/icon/colorHama.png',
                                width: 120,
                                height: 120,
                              ),
                ),
          ),

          Center(child: '${accountNotifier.nickName}'.text.color(AppColors.primaryGrey).size(24).bold.make()),
          Center(child: '프로필 편집 >'.text.color(AppColors.forthGrey).size(12).make()),

          const Height(10),

          _MenuWidget(
            '내 여행',
            onTap: () async {
              Nav.push(const MyTripScreen());
            },
          ),
          const Line().pSymmetric(h:15),
          _MenuWidget(
            '내 저장',
            onTap: () async {
              final manager = DefaultCacheManager();
              await manager.emptyCache();
              if (mounted) {
                MessageDialog('clear_cache_done'.tr()).show();
              }
            },
          ),
          const Line().pSymmetric(h:15),
          _MenuWidget(
            '내 리뷰',
            onTap: () async {
              final manager = DefaultCacheManager();
              await manager.emptyCache();
              if (mounted) {
                MessageDialog('clear_cache_done'.tr()).show();
              }
            },
          ),
          const Line().pSymmetric(h:15),
          _MenuWidget(
            '내 여행일기',
            onTap: () async {
              final manager = DefaultCacheManager();
              await manager.emptyCache();
              if (mounted) {
                MessageDialog('clear_cache_done'.tr()).show();
              }
            },
          ),
          const Line().pSymmetric(h:15),
          _MenuWidget(
            '내 설정',
            onTap: () async {
              final manager = DefaultCacheManager();
              await manager.emptyCache();
              if (mounted) {
                MessageDialog('clear_cache_done'.tr()).show();
              }
            },
          ),
          const Line().pSymmetric(h:15),
          isSmallScreen(context) ? const Height(10) : const EmptyExpanded(),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: ModeSwitch(
              value: context.isDarkMode,
              onChanged: (value) {
                ThemeUtil.toggleTheme(context);
              },
              height: 30,
              activeThumbImage: Image.asset('$basePath/darkmode/moon.png'),
              inactiveThumbImage: Image.asset('$basePath/darkmode/sun.png'),
              activeThumbColor: Colors.transparent,
              inactiveThumbColor: Colors.transparent,
            ).pOnly(left: 20),
          ),
          const Height(10),

          const Height(10),
          Row(
            children: [
              Expanded(
                child: Tap(
                  child: Container(
                      height: 30,
                      width: 100,
                      padding: const EdgeInsets.only(left: 15),
                      child: '© 2023. Bansook Nam. all rights reserved.'
                          .selectableText
                          .size(10)
                          .makeWithDefaultFont()),
                  onTap: () async {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void toggleTheme() {
    ThemeUtil.toggleTheme(context);
  }

  void closeDrawer(BuildContext context) {
    if (Scaffold.of(context).isEndDrawerOpen) {
      Scaffold.of(context).closeEndDrawer();
    }
  }

  Widget getLanguageOption(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Tap(
            child: Container(
                padding: const EdgeInsets.only(left: 5, right: 5),
                margin: const EdgeInsets.only(left: 15, right: 20),
                decoration: BoxDecoration(
                    border: Border.all(color: context.appColors.veryBrightGrey),
                    borderRadius: BorderRadius.circular(10),
                    color: context.appColors.drawerBg,
                    boxShadow: [context.appShadows.buttonShadowSmall]),
                child: Row(
                  children: [
                    const Width(10),
                    DropdownButton<String>(
                      items: [
                        menu(currentLanguage),
                        menu(Language.values.where((element) => element != currentLanguage).first),
                      ],
                      onChanged: (value) async {
                        if (value == null) {
                          return;
                        }
                        await context.setLocale(Language.find(value.toLowerCase()).locale);
                      },
                      value: describeEnum(currentLanguage).capitalizeFirst,
                      underline: const SizedBox.shrink(),
                      elevation: 1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ],
                )),
            onTap: () async {},
          ),
        ],
      );

  DropdownMenuItem<String> menu(Language language) {
    return DropdownMenuItem(
      value: describeEnum(language).capitalizeFirst,
      child: Row(
        children: [
          flag(language.flagPath),
          const Width(8),
          describeEnum(language)
              .capitalizeFirst!
              .text
              .color(Theme.of(context).textTheme.bodyLarge?.color)
              .size(12)
              .makeWithDefaultFont(),
        ],
      ),
    );
  }

  Widget flag(String path) {
    return SimpleShadow(
      opacity: 0.5,
      // Default: 0.5
      color: Colors.grey,
      // Default: Black
      offset: const Offset(2, 2),
      // Default: Offset(2, 2)
      sigma: 2,
      // Default: 2
      child: Image.asset(
        path,
        width: 20,
      ),
    );
  }
}

class _MenuWidget extends StatelessWidget {
  final String text;
  final Function() onTap;

  const _MenuWidget(this.text, {Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Tap(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 20),
          child: Row(
            children: [
              Expanded(
                  child: text.text
                      .textStyle(defaultFontStyle()).bold
                      .color(AppColors.primaryGrey)
                      .size(15)
                      .make()),
              spacer,
              Arrow(direction: AxisDirection.right,)
            ],

          ),
        ),
      ),
    );
  }
}
