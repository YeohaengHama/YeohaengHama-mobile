import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/post_detail/review/w_mini_review_list.dart';
import 'package:fast_app_base/screen/client/post_detail/review/w_review_star.dart';
import 'package:fast_app_base/screen/client/post_detail/review/w_simple_review.dart';
import 'package:fast_app_base/screen/client/post_detail/s_map_detail.dart';
import 'package:fast_app_base/screen/client/post_detail/w_icons.dart';
import 'package:fast_app_base/screen/client/post_detail/w_image_scroll_view.dart';
import 'package:fast_app_base/screen/client/post_detail/w_info_map.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:card_loading/card_loading.dart';
import 'package:nav_hooks/dialog/hook_consumer_dialog.dart';

import '../../../data/entity/open_api/open_api_detail.dart';
import '../../../data/entity/open_api/open_api_image.dart';
import '../../../data/memory/area/area_detail_provider.dart';
import '../../../data/memory/area/area_image_provider.dart';
import '../../../data/memory/review/review_show_all_provider.dart';
import '../../../data/network/area_api.dart';
import '../../../data/network/review_api.dart';
import '../main/search/provider/is_detail_loading_provider.dart';

class PostDetailScreen extends HookConsumerWidget {
  final dynamic searchSimpleResult;
  final dynamic place;

  const PostDetailScreen({
    this.searchSimpleResult,
    this.place,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDetailLoading = ref.watch(isDetailLoadingProvider);
    final pageController = usePageController();
    final customController = useScrollController();
    final reviewController = useScrollController();
    final shouldShowTitle = useState(false);

    Future<void> postDetailArea() async {
      final openApiDetail = OpenApiDetail(
        numOfRows: '1',
        page: '1',
        contentTypeId: searchSimpleResult != null
            ? searchSimpleResult.contentTypeId
            : place!.placeType,
        contentId: searchSimpleResult != null
            ? searchSimpleResult.contentId
            : place!.placeNum.toString(),
        mobileOS: 'IOS',
      );
      final areaApi = ref.read(areaApiProvider);
      await areaApi.postDetailArea(openApiDetail, ref);
    }

    Future<void> postAreaImage() async {
      final openApiImage = OpenApiImage(
        contentId: searchSimpleResult != null
            ? searchSimpleResult.contentId
            : place!.placeNum.toString(),
        numOfRows: '1',
        pageNo: '1',
        mobileOS: 'IOS',
      );
      final areaApi = ref.read(areaApiProvider);
      await areaApi.postAreaImage(openApiImage, ref);
    }

    Future<void> postAreaReview() async {
      final reviewApi = ref.read(reviewApiProvider);
      await reviewApi.showAllReview(
        int.parse(searchSimpleResult != null
            ? searchSimpleResult.contentId
            : place!.placeNum.toString()),
        int.parse(searchSimpleResult != null
            ? searchSimpleResult.contentTypeId
            : place!.placeType),
        ref,
      );
    }

    Future<void> loadData() async {
      final isLoading = ref.read(isDetailLoadingProvider.notifier);
      Future(() async {
        isLoading.setLoading(true);

        await postDetailArea();
        await postAreaImage();
        await postAreaReview();

        isLoading.setLoading(false);
      });
    }

    useEffect(() {
      loadData();
      return null;
    }, []);

    useEffect(() {
      void scrollListener() {
        if (customController.offset > 100) {
          shouldShowTitle.value = true;
        } else {
          shouldShowTitle.value = false;
        }
      }

      customController.addListener(scrollListener);

      return () {
        customController.removeListener(scrollListener);
      };
    }, [customController]);

    return Scaffold(
      body: Material(
        child: CustomScrollView(
          controller: customController,
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              scrolledUnderElevation: 0,
              actions: [
                IconButton(
                  onPressed: () {
                    final searchDetailResult =
                        ref.read(DetailAreaApiResponseProvider).value;
                    final searchImageResult =
                    ref.read(AreaImageApiResponseProvider)!;
                    final searchReviewResult =
                    ref.read(ReviewShowAllListProvider);

                    if (searchDetailResult != null) {
                      Nav.push(MapDetailScreen(
                        searchDetailResult: searchDetailResult,
                        searchImageResult: searchImageResult,
                        searchReviewResult: searchReviewResult,
                      ));
                    }
                  },
                  icon: const Icon(
                    Icons.map_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 300),
                      opacity: shouldShowTitle.value ? 1.0 : 0.0,
                      child: Builder(
                        builder: (context) {
                          String title = ref.read(DetailAreaApiResponseProvider).value?.title ?? '';
                          TextStyle titleStyle = const TextStyle(
                            color: AppColors.primaryGrey,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          );

                          if (!shouldShowTitle.value && title.length > 12) {
                            titleStyle = titleStyle.copyWith(fontSize: 14);
                          }

                          return Container(
                            padding: EdgeInsets.only(left: 55),
                            child: Text(
                              title,
                              style: titleStyle,
                              overflow: TextOverflow.ellipsis,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                background: Container(
                  color: Colors.white,
                  child: isDetailLoading
                      ? CardLoading(
                    height: 200,
                    width: double.infinity,
                    borderRadius: BorderRadius.circular(5),
                  )
                      : ImageScrollView(
                    searchImageResult:
                    ref.read(AreaImageApiResponseProvider)!,
                    pageController: pageController,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    const Height(20),
                    isDetailLoading
                        ? CardLoading(
                      height: 24,
                      width: 200,
                      borderRadius: BorderRadius.circular(5),
                      margin: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    )
                        : Text(
                      ref
                          .read(DetailAreaApiResponseProvider)
                          .value
                          ?.title ??
                          '',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ).pOnly(top: 20, bottom: 10),
                    isDetailLoading
                        ? CardLoading(
                      height: 20,
                      width: 100,
                      borderRadius: BorderRadius.circular(5),
                      margin: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    )
                        : const ReviewStar(),
                    const Height(20),
                    isDetailLoading
                        ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CardLoading(
                            height: 40,
                            width: 40,
                            borderRadius: BorderRadius.circular(5),
                            margin: EdgeInsets.symmetric(
                                horizontal: 45, vertical: 10),
                          ),
                        ),
                        Expanded(
                          child: CardLoading(
                            height: 40,
                            width: 40,
                            borderRadius: BorderRadius.circular(5),
                            margin: EdgeInsets.symmetric(
                                horizontal: 45, vertical: 10),
                          ),
                        ),
                        Expanded(
                          child: CardLoading(
                            height: 40,
                            width: 40,
                            borderRadius: BorderRadius.circular(5),
                            margin: EdgeInsets.symmetric(
                                horizontal: 45, vertical: 10),
                          ),
                        ),
                      ],
                    )
                        : IconsWidget(
                        int.parse(ref
                            .read(DetailAreaApiResponseProvider)
                            .value!
                            .contentId),
                        int.parse(ref
                            .read(DetailAreaApiResponseProvider)
                            .value!
                            .contentTypeId)),
                    const Height(20),
                    const Line(
                      width: maxWidthSize,
                      color: AppColors.outline,
                      height: 1.5,
                    ).pSymmetric(h: 40),
                    const Height(20),
                    isDetailLoading
                        ? CardLoading(
                      height: 100,
                      width: 250,
                      borderRadius: BorderRadius.circular(10),
                      margin: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 0),
                    )
                        : MiniReviewList(controller: reviewController),
                    const Height(20),
                    const Line(
                      width: maxWidthSize,
                      color: AppColors.outline,
                      height: 1.5,
                    ).pSymmetric(h: 40),
                    isDetailLoading
                        ? const mainTextWidget()
                        : ref
                        .read(DetailAreaApiResponseProvider)
                        .value
                        ?.overView !=
                        "null" &&
                        ref
                            .read(DetailAreaApiResponseProvider)
                            .value
                            ?.overView !=
                            null
                        ? Text(
                      ref
                          .read(DetailAreaApiResponseProvider)
                          .value!
                          .overView,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.secondGrey,
                      ),
                    ).pSymmetric(h: 30, v: 30)
                        : Container(),
                    isDetailLoading
                        ? CardLoading(
                      height: 200,
                      width: double.infinity,
                      borderRadius: BorderRadius.circular(5),
                      margin: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    )
                        : InfoMapWidget(
                      searchDetailResult: ref
                          .read(DetailAreaApiResponseProvider)
                          .value!,
                      searchImageResult:
                      ref.read(AreaImageApiResponseProvider)!,
                      searchReviewResult:
                      ref.read(ReviewShowAllListProvider),
                    ).pSymmetric(v: 30, h: 25),
                    const Line(color: AppColors.outline, height: 10),
                    isDetailLoading
                        ? CardLoading(
                      height: 200,
                      width: double.infinity,
                      borderRadius: BorderRadius.circular(5),
                      margin: EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    )
                        : SimpleReviewWidget(
                      int.parse(ref
                          .read(DetailAreaApiResponseProvider)
                          .value!
                          .contentId),
                      int.parse(ref
                          .read(DetailAreaApiResponseProvider)
                          .value!
                          .contentTypeId),
                    ).pSymmetric(h: 25, v: 30),
                    const Height(100),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class mainTextWidget extends StatelessWidget {
  const mainTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(20, (index) => CardLoading(
        height: 10,
        width: double.maxFinite,
        borderRadius: BorderRadius.circular(5),
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 3),
      )),
    ).pSymmetric(v: 20);
  }
}
