import 'package:fast_app_base/screen/client/post_detail/w_detail_map.dart';
import 'package:fast_app_base/screen/client/post_detail/w_map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../data/entity/area/saerch_image_result.dart';
import '../../../../../../../data/entity/area/serch_detail_result.dart';
import '../../../../../../../data/entity/itinerary/a_add_pick_place.dart';
import '../../../../../../../data/entity/itinerary/check_save_place/a_check_save_place.dart';
import '../../../../../../../data/entity/review/a_review_show_all.dart';
import '../../../../../../../data/memory/account/user_provider.dart';
import '../../../../../../../data/memory/area/area_detail_provider.dart';
import '../../../../../../../data/memory/area/selectedDayIndex_provider.dart';
import '../../../../../../../data/memory/itinerary/add_pick_each_place_provider.dart';
import '../../../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../../../data/network/itinerary_api.dart';

class MapInfoFragment extends ConsumerStatefulWidget {
  const MapInfoFragment(
      this.searchDetailResult, this.searchImageResult, this.searchReviewResult,
      {Key? super.key});

  final SearchDetailResult? searchDetailResult;
  final SearchImageResult? searchImageResult;
  final List<ReviewShowAll>? searchReviewResult;

  @override
  ConsumerState<MapInfoFragment> createState() => _MapDetailScreenState();
}

class _MapDetailScreenState extends ConsumerState<MapInfoFragment> {
  int currentDay = 0;
  bool isPickArea = false;
  late ItineraryApi itineraryApi;

  @override
  void initState() {
    super.initState();
    itineraryApi = ItineraryApi(); // Initialize itineraryApi here
    checkSavePlaceAndWriteReview();
  }

  void checkSavePlaceAndWriteReview() async {
    final searchDetailResult = ref.read(DetailAreaApiResponseProvider).value;
    if (searchDetailResult != null) {
      final checkSavePlace = CheckSavePlace(
        placeNum: searchDetailResult.contentId,
        contentTypeId: searchDetailResult.contentTypeId,
      );

      try {
        final bool isSaved =
        await itineraryApi.checkSavePlace(checkSavePlace, ref);
        setState(() {
          isPickArea = isSaved;
        });
      } catch (e) {
        print('장소 확인 중 예외 발생: $e');
        // 에러 처리
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final ItineraryApi itineraryApi = ItineraryApi();

    String overviewText = widget.searchDetailResult?.overView ?? '';
    if (overviewText.length > 20) {
      overviewText = '${overviewText.substring(0, 45)}...';
    }

    final searchDetailResult = ref.read(DetailAreaApiResponseProvider).value;
    final selectedDayIndexNotifier =
    ref.read(selectedDayIndexNotifierProvider.notifier);
    final pickedDay =
        ref.read(selectedDayIndexNotifierProvider.notifier).state;

    final selectedIndex = ref.watch(selectedDayIndexNotifierProvider);
    final itinerary = ref.read(itineraryCheckProvider);
    final accountNotifier = ref.read(accountProvider.notifier);
    final AddPickPlace addPickPlace = AddPickPlace(
      day: selectedIndex + 1,
      addr1: widget.searchDetailResult?.addr1 ?? '',
      mapx: widget.searchDetailResult != null
          ? double.parse(widget.searchDetailResult!.mapX)
          : 0.0,
      mapy: widget.searchDetailResult != null
          ? double.parse(widget.searchDetailResult!.mapY)
          : 0.0,
      placeType: widget.searchDetailResult?.contentTypeId ?? '',
      placeNum: widget.searchDetailResult?.contentId ?? '',
      placeName: widget.searchDetailResult?.title ?? '',
      startTime: "string",
      endTime: "string",
      memo: "string",
    );

    final _addPickEachPlaceProvider = ref.watch(addPickEachPlaceProvider);

    return Scaffold(
      body: Stack(
        children: [
          itinerary != null
              ? DetailMapWidget(
            mapX: widget.searchDetailResult != null
                ? double.parse(widget.searchDetailResult!.mapX)
                : 0.0,
            mapY: widget.searchDetailResult != null
                ? double.parse(widget.searchDetailResult!.mapY)
                : 0.0,
          )
              : MapWidget(
            mapX: widget.searchDetailResult != null
                ? double.parse(widget.searchDetailResult!.mapX)
                : 0.0,
            mapY: widget.searchDetailResult != null
                ? double.parse(widget.searchDetailResult!.mapY)
                : 0.0,
          ),
        ],
      ),
    );
  }
}
