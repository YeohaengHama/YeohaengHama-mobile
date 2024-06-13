import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/area/saerch_image_result.dart';
import 'package:fast_app_base/data/entity/area/serch_detail_result.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/client/post_detail/review/w_mini_review_list.dart';
import 'package:fast_app_base/screen/client/post_detail/review/w_review_star.dart';
import 'package:fast_app_base/screen/client/post_detail/review/w_simple_review.dart';
import 'package:fast_app_base/screen/client/post_detail/w_icons.dart';
import 'package:fast_app_base/screen/client/post_detail/w_image_scroll_view.dart';
import 'package:fast_app_base/screen/client/post_detail/w_info_map.dart';
import 'package:fast_app_base/screen/client/post_detail/s_map_detail.dart';
import 'package:flutter/material.dart';
import 'package:nav_hooks/dialog/hook_consumer_dialog.dart';

import '../../../data/entity/review/a_review_show_all.dart';
import '../../../data/memory/area/area_detail_provider.dart';
import '../../../data/memory/review/review_show_all_provider.dart';
import '../../../data/network/review_api.dart';

class postDetailScreen extends ConsumerStatefulWidget {
  final SearchDetailResult searchDetailResult;
  final SearchImageResult searchImageResult;
  final List<ReviewShowAll> searchReviewResult;

  const postDetailScreen( {
    required this.searchDetailResult,
    required this.searchImageResult,
    required this.searchReviewResult,
    super.key,
  });

  @override
  ConsumerState<postDetailScreen> createState() => _postDetailScreenState();
}

class _postDetailScreenState extends ConsumerState<postDetailScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();



  }
  @override
  Widget build(BuildContext context) {
    final postDetail = ref.read(DetailAreaApiResponseProvider);
    return postDetail.when(
      data: (data) => _PostDetail(widget.searchDetailResult, widget.searchImageResult, widget.searchReviewResult),
      error: (error, trace) => '에러발생'.text.make(),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}class _PostDetail extends HookWidget {
  final SearchDetailResult searchDetailResult;
  final SearchImageResult searchImageResult;
  final List<ReviewShowAll> searchReviewResult;
  const _PostDetail(this.searchDetailResult,
      this.searchImageResult, this.searchReviewResult, {
        super.key,
      });

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final customController = usePageController();
    final reviewController = useScrollController();

    final shouldShowTitle = useState(false);

    useEffect(() {
      final controller = customController;
      scrollListener() {
        if (controller.offset > 100) {
          shouldShowTitle.value = true;
        } else {
          shouldShowTitle.value = false;
        }
      }
      controller.addListener(scrollListener);

      // 컴포넌트가 해제될 때 컨트롤러의 리스너와 컨트롤러 자체를 해제합니다.
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
              searchDetailResult.title,
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
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              scrolledUnderElevation: 0,
              actions: [
                IconButton(
                  onPressed: () {
                    Nav.push(MapDetailScreen(
                      searchDetailResult: searchDetailResult,
                      searchImageResult: searchImageResult,
                      searchReviewResult: searchReviewResult,
                    ));
                  },
                  icon: const Icon(
                    Icons.map_outlined,
                    color: Colors.black,
                  ),
                ),
                // IconButton(
                //   onPressed: () {},
                //   icon: const Icon(
                //     Icons.more_horiz,
                //     color: Colors.black,
                //   ),
                // ),
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
                    searchImageResult: searchImageResult,
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
                      searchDetailResult.title.text.bold
                          .size(24)
                          .color(AppColors.primaryGrey)
                          .make(),
                      ReviewStar(),
                      const Height(20),
                      IconsWidget(int.parse(searchDetailResult.contentId), int.parse(searchDetailResult.contentTypeId)),
                      const Height(20),
                      const Line(
                        width: maxWidthSize,
                        color: AppColors.outline,
                        height: 1.5,
                      ).pSymmetric(h: 40),
                      const Height(20),
                      MiniReviewList(controller: reviewController ),
                      const Height(20),
                      const Line(
                        width: maxWidthSize,
                        color: AppColors.outline,
                        height: 1.5,
                      ).pSymmetric(h: 40),
                      searchDetailResult.overView.text
                          .size(14)
                          .color(AppColors.secondGrey)
                          .make()
                          .pSymmetric(h: 30, v: 30),
                      const Line(color: AppColors.outline, height: 10),
                      InfoMapWidget(searchDetailResult: searchDetailResult, searchImageResult: searchImageResult,searchReviewResult: searchReviewResult,).pSymmetric(v:30 , h: 25),
                      const Line(color: AppColors.outline, height: 10),
                      SimpleReviewWidget(int.parse(searchDetailResult.contentId), int.parse(searchDetailResult.contentTypeId)).pSymmetric(h:25, v: 30),
                      const Height(100),

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


bool get shouldShowTitle {
  // Define the scroll threshold to show/hide the title
  double scrollThreshold = 100.0;
  return _scrollController.hasClients &&
      _scrollController.offset > scrollThreshold;
}

ScrollController _scrollController = ScrollController();
