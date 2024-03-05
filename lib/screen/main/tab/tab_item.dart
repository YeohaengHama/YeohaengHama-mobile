import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/home/f_home.dart';
import 'package:fast_app_base/screen/main/tab/schedule/f_schedule.dart';
import 'package:flutter/material.dart';

import 'information /f_information.dart';
import 'meeting/f_meeting.dart';

enum TabItem {
  home(Icons.location_on_outlined, '홈', HomeFragment()),
  schedule(Icons.calendar_today_outlined, '일정', ScheduleFragment()),
  meeting(Icons.group_outlined, '모임', MeetingFragment()),
  information(Icons.cloud_outlined, '정보', InformationFragment());

  final IconData activeIcon;
  final IconData inActiveIcon;
  final String tabName;
  final Widget firstPage;

  const TabItem(this.activeIcon, this.tabName, this.firstPage, {IconData? inActiveIcon})
      : inActiveIcon = inActiveIcon ?? activeIcon;

  BottomNavigationBarItem toNavigationBarItem(BuildContext context, {required bool isActivated}) {
    return BottomNavigationBarItem(
        icon: Icon(
          key: ValueKey(tabName),
          isActivated ? activeIcon : inActiveIcon,
          color:
              isActivated ? context.appColors.iconButton : context.appColors.iconButtonInactivate,
        ),
        label: tabName);
  }
}
