import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/diary/vo_find_account_diary.dart';
import 'package:fast_app_base/screen/main/menu/my_trip/diary/w_diary_image_scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nav_hooks/dialog/hook_consumer_dialog.dart';

class DiaryList extends HookWidget {
  const DiaryList(this.accountDiary, {Key? key}) : super(key: key);
  final FindAccountDiary accountDiary;

  @override
  Widget build(BuildContext context) {
    final _accounDiary = accountDiary;
    final pageController = usePageController();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '${_accounDiary.title}'.text.bold.color(AppColors.secondGrey).size(18).make(),
        Height(5),
        '${_accounDiary.content}'.text.color(AppColors.secondGrey).size(15).make(),
        Height(5),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            // 모서리를 둥글게 설정
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3), // 그림자 색상 및 투명도 조절
                spreadRadius: 4,
                blurRadius:10,
                offset: Offset(0, 3), // 그림자의 위치 조절
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Column(
              children: [
                DiaryImageScrollView(pageController: pageController, accountDiary: _accounDiary),
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      '#서울 #12월출발 #2박3일 #여유롭게힐링 #친구와'.text.bold.color(AppColors.primaryGrey).make().pSymmetric(h: 10)
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.thumb_up_alt_outlined,
                  color: AppColors.thirdGrey,
                )),
            '1'.text.color(AppColors.thirdGrey).make(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_outlined,
                  color: AppColors.thirdGrey,
                )),
            '0'.text.color(AppColors.thirdGrey).make(),
            spacer,
            '2024-04-25'
                .text.size(5)
                .color(AppColors.thirdGrey)
                .make(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz,
                  color: AppColors.thirdGrey,
                )),
          ],
        )
      ],
    );
  }
}
