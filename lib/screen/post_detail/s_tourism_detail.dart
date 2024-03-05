import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/post_detail/provider/tourism_post_provider.dart';
import 'package:fast_app_base/screen/post_detail/w_image_scorll_view.dart';
import 'package:fast_app_base/screen/post_detail/w_map.dart';
import 'package:fast_app_base/screen/post_detail/w_review_list.dart';
import 'package:fast_app_base/screen/post_detail/w_review_star.dart';
import 'package:fast_app_base/screen/post_detail/w_simple_review.dart';
import 'package:flutter/material.dart';
import 'package:nav_hooks/dialog/hook_consumer_dialog.dart';

import '../../entity/area/vo_review.dart';
import '../../entity/area/vo_tourism.dart';

class TourismDetailScreen extends ConsumerWidget {
  final Tourism? tourism;
  final int id;

  const TourismDetailScreen(this.id, {super.key, this.tourism});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tourismPost = ref.watch(tourismPostProvider(id));

    return tourismPost.when(
      data: (data) => _PostDetail(
        tourism ?? data.tourism,
      ),
      error: (error, trace) => '에러발생'.text.make(),
      loading: () => tourism != null
          ? _PostDetail(tourism!)
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}

class _PostDetail extends HookWidget {
  final Tourism tourism;

  final Review? review;

  const _PostDetail(this.tourism, {super.key, this.review});

  @override
  Widget build(BuildContext context) {
    const eventIconsSize = 30.0;
    const evenIconsTextSize = 13.0;
    final pageController = usePageController();
    final customController = usePageController();
    final reviewController = ScrollController();

    final shouldShowTitle = useState(false);

    useEffect(() {
      final controller = customController;
      controller.addListener(() {
        if (controller.offset > 100) {
          shouldShowTitle.value = true;
        } else {
          shouldShowTitle.value = false;
        }
      });
      return () {
        controller.dispose();
      };
    }, [customController]);
    Widget buildTitle() {
      return StatefulBuilder(
        builder: (context, setState) {
          return AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: shouldShowTitle.value ? 1.0 : 0.0,
            child: Text(
              tourism.tourismName,
              style: const TextStyle(
                  color: AppColors.primaryGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          );
        },
      );
    }
    return Material(
      child: CustomScrollView(
        controller: customController,
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
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
                  )),
            ],
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildTitle(),
                ],
              ),
              background: Container(
                color: Colors.white,
                child: ImageScrollView(
                  pageController: pageController,
                  tourism: tourism,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    const Height(20),
                    tourism.tourismName.text.bold
                        .size(24)
                        .color(AppColors.primaryGrey)
                        .make(),
                    ReviewStar(reviewList),
                    const Height(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        width20,
                        Expanded(
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {},
                            icon: Column(
                              children: [
                                const Icon(
                                  Icons.favorite_outline_outlined,
                                  size: eventIconsSize,
                                ),
                                '장소담기'
                                    .text
                                    .size(evenIconsTextSize)
                                    .bold
                                    .color(AppColors.secondGrey)
                                    .make()
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {},
                            icon: Column(
                              children: [
                                const Icon(
                                  Icons.star_border_rounded,
                                  size: eventIconsSize + 5,
                                ),
                                '리뷰쓰기'
                                    .text
                                    .size(evenIconsTextSize)
                                    .bold
                                    .color(AppColors.secondGrey)
                                    .make()
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: IconButton(
                            padding: const EdgeInsets.all(0),
                            onPressed: () {},
                            icon: Column(
                              children: [
                                const Icon(
                                  Icons.ios_share_outlined,
                                  size: eventIconsSize - 2,
                                ),
                                '공유하기'
                                    .text
                                    .size(evenIconsTextSize)
                                    .bold
                                    .color(AppColors.secondGrey)
                                    .make()
                              ],
                            ),
                          ),
                        ),
                        width20,
                      ],
                    ),
                    const Height(20),
                    const Line(
                      width: maxWidthSize,
                      color: AppColors.outline,
                      height: 1.5,
                    ).pSymmetric(h: 40),
                    const Height(20),
                    ReviewList(controller: reviewController),
                    const Height(20),
                    const Line(
                      width: maxWidthSize,
                      color: AppColors.outline,
                      height: 1.5,
                    ).pSymmetric(h: 40),
                    tourism.content.text.size(14).color(AppColors.secondGrey).make().pSymmetric(h: 30,v: 30),
                    const Line(color: AppColors.outline, height: 10),
                    Align(
                      alignment: Alignment.topLeft,
                      child: '기본정보'
                          .text
                          .color(AppColors.primaryGrey)
                          .size(20)
                          .bold
                          .make(),
                    ).p(25),
                    const SizedBox(
                      width: maxWidthSize,
                      height: 250,
                      child:mapWidget(),
                    ),

                    const Height(200),
                  ],
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}


bool get shouldShowTitle {
  // Define the scroll threshold to show/hide the title
  double scrollThreshold = 100.0;
  return _scrollController.hasClients &&
      _scrollController.offset > scrollThreshold;
}

ScrollController _scrollController = ScrollController();
