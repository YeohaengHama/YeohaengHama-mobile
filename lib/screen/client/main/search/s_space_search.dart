import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/search/f_shorts_search_list.dart';
import 'package:fast_app_base/screen/client/main/search/provider/is_loading_provider.dart';
import 'package:fast_app_base/screen/client/main/search/w_search_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/entity/open_api/open_api_area.dart';
import '../../../../data/memory/search/search_simple_area_provider.dart';
import '../../../../data/memory/search/search_simple_diary_provider.dart';
import '../../../../data/memory/search/search_simple_restaurant_provider.dart';
import '../../../../data/network/area_api.dart';
import '../../../../data/network/search_api.dart';
import 'content_type_provider.dart';
import 'f_diary_search_list.dart';
import 'f_restaurant_search_list.dart';
import 'f_tourism_search_list.dart';

class SpaceSearchFragment extends ConsumerStatefulWidget {
  const SpaceSearchFragment(this.searchKeyword, {super.key});

  final String? searchKeyword;

  @override
  ConsumerState<SpaceSearchFragment> createState() =>
      _SpaceSearchFragmentState();
}

class _SpaceSearchFragmentState extends ConsumerState<SpaceSearchFragment>
    with SingleTickerProviderStateMixin {

  final TextEditingController searchController = TextEditingController();
  late final TabController tabController =
  TabController(length: 4, vsync: this);
  int currentIndex = 0;
  String contentTypeId = '';

  @override
  void initState() {
    super.initState();
    if (widget.searchKeyword != null) {
      searchController.text = widget.searchKeyword!;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        initializeSearch();
      });
    }
    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        setState(() {
          currentIndex = tabController.index;
        });
        switchTabContent(tabController.index);
      }
    });
  }

  Future<void> initializeSearch() async {
    try {
      final isLoading = ref.read(isLoadingProvider.notifier);
      isLoading.setLoading(true);

      final simpleAreaNotifier = ref.read(simpleAreaApiResponseProvider.notifier);
      final simpleAreaRestaurantNotifier = ref.read(simpleAreaRestaurantApiResponseProvider.notifier);
      final simpleDiaryNotifier = ref.read(SearchDiaryAreaProvider.notifier);

      simpleAreaNotifier.state = [];
      simpleAreaRestaurantNotifier.state = [];
      simpleDiaryNotifier.state = [];

      await postSearchArea();
      await postSearchRestaurantArea();
      await postDiarySearch();
      await postShortsSearch();
    } catch (e, stackTrace) {
      print('Exception occurred during initializeSearch: $e');
      print('StackTrace: $stackTrace');
    } finally {
      if (mounted) {
        ref.read(isLoadingProvider.notifier).setLoading(false);
      }
    }
  }

  Future<void> postSearchArea() async {
    final openApiArea = OpenApiArea(
      numOfRows: '100',
      page: '1',
      contentTypeId: '12',
      keyword: searchController.text,
      mobileOS: 'IOS',
    );
    final areaApi = ref.read(areaApiProvider);
    await areaApi.postSearchTourismArea(openApiArea, ref);
  }

  Future<void> postSearchRestaurantArea() async {
    final openApiArea = OpenApiArea(
      numOfRows: '100',
      page: '1',
      contentTypeId: '39',
      keyword: searchController.text,
      mobileOS: 'IOS',
    );
    final areaApi = ref.read(areaApiProvider);
    await areaApi.postSearchRestaurantArea(openApiArea, ref);
  }

  Future<void> postDiarySearch() async {
    final searchApi = ref.read(SearchApiProvider);
    await searchApi.searchDiaryArea(searchController.text, ref);
  }

  Future<void> postShortsSearch() async {
    final searchApi = ref.read(SearchApiProvider);
    await searchApi.searchShorts(searchController.text, ref);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(isLoadingProvider);

    return Stack(
      children: [
        Scaffold(
          appBar: SearchAppBar(
            controller: searchController,
            hintText: '지역/관광/맛집을 검색 해보세요.',
            contentTypeId: ref.watch(contentTypeIdProvider.notifier).state,
          ),
          body: Column(
            children: [
              tabBar,
              Expanded(
                child: TabBarView(
                  controller: tabController,
                  children: [
                    const TourismSearchListFragment(),
                    const RestaurantSearchListFragment(),
                    const DiarySearchListFragment(),
                    const ShortsSearchListFragment(),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (isLoading)
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.transparent,
              ),
              Center(
                child: LoadingAnimationWidget.fourRotatingDots(
                  color: AppColors.mainPurple,
                  size: 100,
                ),
              ),
            ],
          ),
      ],
    );
  }

  Widget get tabBar => Column(
    children: [
      TabBar(
        controller: tabController,
        labelStyle:
        const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        labelColor: AppColors.primaryGrey,
        indicatorColor: AppColors.mainPurple,
        unselectedLabelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppColors.forthGrey,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelPadding: const EdgeInsets.symmetric(vertical: 5),
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        tabs: [
          '관광'.text.make(),
          '맛집'.text.make(),
          '여행일기'.text.make(),
          '숏츠'.text.make(),
        ],
      ),
    ],
  );

  Future<void> switchTabContent(int index) async {
    try {
      switch (index) {
        case 0:
          ref.read(contentTypeIdProvider.notifier).state = '14';
          contentTypeId = ref.read(contentTypeIdProvider.notifier).state;
          break;
        case 1:
          ref.read(contentTypeIdProvider.notifier).state = '12';
          contentTypeId = ref.read(contentTypeIdProvider.notifier).state;
          break;
        case 2:
          ref.read(contentTypeIdProvider.notifier).state = '39';
          contentTypeId = ref.read(contentTypeIdProvider.notifier).state;
          break;
        case 3:
          ref.read(contentTypeIdProvider.notifier).state = '39';
          contentTypeId = ref.read(contentTypeIdProvider.notifier).state;
          break;
        default:
      }
    } catch (e, stackTrace) {
      print('Exception occurred during switchTabContent: $e');
      print('StackTrace: $stackTrace');
    }
  }
}
