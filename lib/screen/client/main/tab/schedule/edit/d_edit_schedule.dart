import 'package:fast_app_base/data/network/area_api.dart';
import 'package:fast_app_base/data/network/user_api.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/invite/s_invite_schedule.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../common/common.dart';
import '../../../../registration/calendar/s_calendar.dart';
import '../../../../registration/pick/s_area_pick.dart';
import 'm_title_edit.dart';

class EditScheduleDialog extends ConsumerWidget {
  const EditScheduleDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final columnP = 9.0;
    final userApi =  ref.read(userApiProvider);
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tap(
            onTap: () {
              Nav.push(AreaPick(isEditMode: true));
              Nav.pop(context);
            },
            child: '여행도시 편집'.text.bold.color(AppColors.primaryGrey).make().pSymmetric(v: columnP)),
        Tap(
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => TitleEditModal(), // Custom modal widget for editing travel dates
              );
              Nav.pop(context);
            },
            child: '여행제목 등록'.text.bold.color(AppColors.primaryGrey).make().pSymmetric(v: columnP)),
        Tap(
            onTap: () {
              Nav.push(CalenderScreen(isEditMode: true));
              Nav.pop(context);
            },
            child: '여행날짜 수정'.text.bold.color(AppColors.primaryGrey).make().pSymmetric(v: columnP)),
        Tap(
            onTap: () async{
              await userApi.showAllAccount(ref);
              Nav.push(

                  InvateSchedule());
              Nav.pop(context);
            },
            child: '일정에 일행 초대'.text.bold.color(AppColors.primaryGrey).make().pSymmetric(v: columnP)),
        Tap(
            onTap: () {
              Nav.pop(context);
            },
            child: '여행 삭제'.text.bold.color(AppColors.primaryGrey).make().pSymmetric(v: columnP))
      ],
    );
  }
}
