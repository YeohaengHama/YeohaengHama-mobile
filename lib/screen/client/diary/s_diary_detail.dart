import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_image_scroll_view.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/data/memory/diary/diary_detail_proiver.dart';
import 'package:fast_app_base/screen/client/diary/w_diary_place_holder_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nav_hooks/dialog/hook_consumer_dialog.dart';

import '../../../data/entity/diary/vo_detail_diary.dart';
import '../../../data/memory/area/area_detail_provider.dart';

class DetailDiaryScreen extends HookWidget {
  final DetailDiary detailDiary;

  const DetailDiaryScreen(this.detailDiary, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final customController = usePageController();

    final shouldShowTitle = useState(false);

    useEffect(() {
      final controller = customController;
      scrollListener() {
        if (controller.offset > 300) {
          shouldShowTitle.value = true;
        } else {
          shouldShowTitle.value = false;
        }
      }

      controller.addListener(scrollListener);

      return () {
        controller.removeListener(scrollListener);
      };
    }, []);

    Widget buildTitle() {
      return StatefulBuilder(
        builder: (context, setState) {
          return AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: shouldShowTitle.value ? 1.0 : 0.0,
            child: Text(
              detailDiary.title,
              style: const TextStyle(
                color: AppColors.primaryGrey,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      body: Material(
        child: CustomScrollView(
          controller: customController,
          slivers: [
            SliverAppBar(
              floating: false,
              pinned: true,
              scrolledUnderElevation: 0,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.map_outlined,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    buildTitle(),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: ImageScrollViewWidget(
                pageController: pageController,
                page: detailDiary,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Height(20),
                      detailDiary.title.text.bold
                          .size(24)
                          .color(AppColors.primaryGrey)
                          .make()
                          .pSymmetric(h: contentLeftPadding),
                      detailDiary.content.text
                          .size(14)
                          .color(AppColors.secondGrey)
                          .make()
                          .pSymmetric(h: contentLeftPadding, v: 30),
                      DiaryPlaceHolderList(places: detailDiary.itinerary.place),
                      Center(
                        child: RoundedContainer(
                          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
                          radius: 5,
                          backgroundColor: AppColors.mainPurple,
                          child: SizedBox(
                            width: double.infinity,
                            height: 20,
                            child: Center(
                              child: '내 일정으로 담기'
                                  .text
                                  .size(15)
                                  .color(Colors.white)
                                  .bold
                                  .make(),
                            ),
                          ),
                        ).pSymmetric(h: 50),
                      ),
                      Height(20),
                      Line(color: AppColors.outline,),

                      Wrap(
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: detailDiary.tag!.map((tag) {
                          return '#${tag} '.text.bold.color(AppColors.secondGrey).make().pOnly(right: 2);
                        }).toList(),
                      ).pSymmetric(h:contentLeftPadding,v: 20),

                      Container(
                        height: 300,
                      )
                    ],
                  );
                },
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
