import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nav_hooks/dialog/hook_consumer_dialog.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:fast_app_base/common/widget/scaffold/show_bottom_dialog.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/itinerary/a_add_pick_place.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/info/d_change_place.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/info/f_map_info.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/info/f_near_info.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/info/f_place_info.dart';
import '../../../../../../../data/entity/open_api/open_api_area_location.dart';
import '../../../../../../../data/entity/open_api/open_api_detail.dart';
import '../../../../../../../data/entity/open_api/open_api_image.dart';
import '../../../../../../../data/memory/area/area_detail_provider.dart';
import '../../../../../../../data/memory/area/area_image_provider.dart';
import '../../../../../../../data/memory/area/selectedDayIndex_provider.dart';
import '../../../../../../../data/memory/review/review_show_all_provider.dart';
import '../../../../../../../data/network/area_api.dart';
import '../../../../../../../data/network/review_api.dart';
import '../../../../search/provider/is_detail_loading_provider.dart';

class PickPlaceInfoScreen extends StatefulHookConsumerWidget {
  final AddPickPlace addPickPlace;

  const PickPlaceInfoScreen(this.addPickPlace, {super.key});

  @override
  _PickPlaceInfoScreenState createState() => _PickPlaceInfoScreenState();
}

class _PickPlaceInfoScreenState extends ConsumerState<PickPlaceInfoScreen> {
  late ScrollController customController;
  late ScrollController reviewController;
  late PageController pageController;
  late ValueNotifier<bool> shouldShowTitle;

  @override
  void initState() {
    super.initState();
    customController = ScrollController();
    reviewController = ScrollController();
    pageController = PageController();
    shouldShowTitle = ValueNotifier(false);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      loadData();
    });
  }

  Future<void> loadData() async {
    final isLoading = ref.read(isDetailLoadingProvider.notifier);
    isLoading.setLoading(true);

    try {
      await postDetailArea();
      await postAreaImage();
      await postAreaReview();
      await searchLocation();
    } finally {
      isLoading.setLoading(false);
    }
  }

  Future<void> postDetailArea() async {
    final openApiDetail = OpenApiDetail(
      numOfRows: '1',
      page: '1',
      contentTypeId: widget.addPickPlace.placeType,
      contentId: widget.addPickPlace.placeNum,
      mobileOS: 'IOS',
    );
    final areaApi = ref.read(areaApiProvider);
    await areaApi.postDetailArea(openApiDetail, ref);
  }

  Future<void> postAreaImage() async {
    final openApiImage = OpenApiImage(
      contentId: widget.addPickPlace.placeNum,
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
      int.parse(widget.addPickPlace.placeNum),
      int.parse(widget.addPickPlace.placeType),
      ref,
    );
  }

  Future<void> searchLocation() async {
    final searchDetailResult = ref.read(DetailAreaApiResponseProvider).value;
    if (searchDetailResult != null) {
      final openApiAreaLocation = OpenApiAreaLocation(
        numOfRows: '100',
        mapX: searchDetailResult.mapX,
        mapY: searchDetailResult.mapY,
        radius: 3000,
        contentTypeId: searchDetailResult.contentTypeId,
      );
      final areaApi = ref.read(areaApiProvider);
      await areaApi.searchLocationList(openApiAreaLocation, ref);
    }
  }

  @override
  void dispose() {
    customController.dispose();
    reviewController.dispose();
    pageController.dispose();
    shouldShowTitle.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isDetailLoading = ref.watch(isDetailLoadingProvider);
    final selectedDayIndexNotifier =
    ref.read(selectedDayIndexNotifierProvider.notifier);
    final screenWidth = MediaQuery.of(context).size.width;
    final tabWidth = screenWidth / 3;

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

    final searchDetailResult = ref.read(DetailAreaApiResponseProvider).value;
    final searchImageResult = ref.read(AreaImageApiResponseProvider);
    final searchReviewResult = ref.read(ReviewShowAllListProvider);



    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: 'Day ${selectedDayIndexNotifier.state + 1}'.text.make(),
          actions: [
            Tap(
              onTap: () {
                ShowBottomDialog(
                  context,
                  SizedBox(height: 200, child: ChangePlace()),
                );
              },
              child: Icon(Icons.format_list_numbered_outlined, size: 30)
                  .pOnly(right: 15),
            )
          ],
          bottom: TabBar(
            overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
              if (states.contains(MaterialState.pressed)) {
                return AppColors.white.withOpacity(0.2);
              }
              return null;
            }),
            indicatorColor: AppColors.mainPurple,
            labelColor: AppColors.mainPurple,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 4.0, color: AppColors.mainPurple),
              borderRadius: BorderRadius.circular(10),
              insets: EdgeInsets.symmetric(
                horizontal: (screenWidth - tabWidth) / 3,
              ),
            ),
            tabs: [
              Tab(text: '정보'),
              Tab(text: '지도'),
              Tab(text: '근처'),
            ],
          ),
        ),
        body: TabBarView(
          children: [

              PlaceInfoFragment(
                searchDetailResult,
                searchImageResult,
                searchReviewResult,
              ),


              MapInfoFragment(
                searchDetailResult,
                searchImageResult,
                searchReviewResult!,
              ),


              NearInfoFragment(searchDetailResult)

          ],
        ),
      ),
    );
  }
}
