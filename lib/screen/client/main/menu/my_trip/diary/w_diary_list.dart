import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/diary/vo_find_account_diary.dart';
import 'package:fast_app_base/data/network/diary_api.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/diary/w_diary_image_scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nav_hooks/dialog/hook_consumer_dialog.dart';

import '../../../../../../data/memory/diary/diary_detail_proiver.dart';
import '../../../../diary/s_diary_detail.dart';

class DiaryList extends HookConsumerWidget {
  const DiaryList(this.accountDiary, {Key? key}) : super(key: key);
  final FindAccountDiary accountDiary;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _accounDiary = accountDiary;
    final diaryApi = DiaryApi();
    final pageController = usePageController();
    return Tap(
      onTap: () async {
        await diaryApi.showDetailDiary(accountDiary.diaryId,ref);
        final detailDiary = ref.read(detailDiaryProvider).value;
        if (detailDiary != null) {
          Nav.push(DetailDiaryScreen(detailDiary));
        } else {
          // Handle the case when either searchDetailResult or searchImageResult is null
        }
      },
      child: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              '${_accounDiary.title}'.text.bold.color(AppColors.secondGrey).size(18).make(),
              const Height(5),
              '${_accounDiary.content}'.text.color(AppColors.secondGrey).size(15).make(),
              const Height(5),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  // 모서리를 둥글게 설정
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3), // 그림자 색상 및 투명도 조절
                      spreadRadius: 4,
                      blurRadius:10,
                      offset: const Offset(0, 3), // 그림자의 위치 조절
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Column(
                    children: [
                      DiaryImageScrollView(pageController: pageController, accountDiary: _accounDiary),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        height: 100,
                        child: Center(
                          child: Wrap(
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: _accounDiary.tag.map((tag) {
                              return '#${tag} '.text.bold.color(AppColors.primaryGrey).make().pOnly(right: 2);
                            }).toList(),
                          ).pSymmetric(h:10),
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
                      icon: const Icon(
                        Icons.thumb_up_alt_outlined,
                        color: AppColors.thirdGrey,
                      )),
                  '1'.text.color(AppColors.thirdGrey).make(),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
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
                      icon: const Icon(
                        Icons.more_horiz,
                        color: AppColors.thirdGrey,
                      )),
                ],
              ),
            ],
          ).pSymmetric(v: 20,h: 35),
          const Line(color: AppColors.whiteGrey,height: 8)
        ],
      ),
    );
  }
}
