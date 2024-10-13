import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/memory/itinerary/add_pick_each_place_provider.dart';
import 'package:fast_app_base/screen/client/post_detail/review/w_review_star.dart';
import 'package:fast_app_base/screen/client/post_detail/w_detail_map.dart';
import 'package:fast_app_base/screen/client/post_detail/w_map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../data/entity/area/saerch_image_result.dart';
import '../../../data/entity/area/serch_detail_result.dart';
import '../../../data/entity/itinerary/a_add_pick_place.dart';
import '../../../data/entity/itinerary/check_save_place/a_check_save_place.dart';
import '../../../data/entity/review/a_review_show_all.dart';
import '../../../data/memory/area/area_detail_provider.dart';
import '../../../data/memory/area/selectedDayIndex_provider.dart';
import '../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../data/memory/account/user_provider.dart';
import '../../../data/network/itinerary_api.dart';

class MapDetailScreen extends ConsumerStatefulWidget {
  const MapDetailScreen(
      {Key? super.key,
      required this.searchDetailResult,
      required this.searchImageResult,
      required this.searchReviewResult});
  final SearchDetailResult searchDetailResult;
  final SearchImageResult searchImageResult;
  final List<ReviewShowAll> searchReviewResult;

  @override
  ConsumerState<MapDetailScreen> createState() => _MapDetailScreenState();
}

class _MapDetailScreenState extends ConsumerState<MapDetailScreen> {
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
    final ItineraryApi itineraryApi= ItineraryApi();


    String overviewText = widget.searchDetailResult.overView;
    if (overviewText.length > 20) {
      overviewText = '${overviewText.substring(0, 45)}...';
    }
    final searchDetailResult = ref.read(DetailAreaApiResponseProvider).value;
    final selectedDayIndexNotifier =
        ref.read(selectedDayIndexNotifierProvider.notifier);
    final pickedDay =  ref.read(selectedDayIndexNotifierProvider.notifier).state;

    final selectedIndex = ref.watch(selectedDayIndexNotifierProvider);
    final itinerary = ref.read(itineraryCheckProvider);
    final accountNotifier = ref.read(accountProvider.notifier);
    final AddPickPlace addPickPlace = AddPickPlace(day: selectedIndex+1 ,addr1:  widget.searchDetailResult.addr1, mapx: double.parse( widget.searchDetailResult.mapX), mapy: double.parse(widget.searchDetailResult.mapY), placeType:  widget.searchDetailResult.contentTypeId, placeNum:  widget.searchDetailResult.contentId, placeName: widget.searchDetailResult.title,startTime: "string", endTime: "string",memo: "string" );
    final _addPickEachPlaceProvider = ref.watch(addPickEachPlaceProvider);
    return Scaffold(
      extendBodyBehindAppBar: true, // Extend the body behind the AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Make AppBar transparent
        elevation: 0, // Remove AppBar shadow
        actions: [
          IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () async {

              if (itinerary != null) {
                setState(() {
                  isPickArea = !isPickArea;
                });
                await itineraryApi.PostAddEachPickPlace(ref, addPickPlace, null);

              } else {
                const snackBar = SnackBar(
                  content: Text('아직 일정이 추가 되지 않았습니다.'),
                  duration: Duration(seconds: 2),
                  backgroundColor: AppColors.mainPurple,
                );

                // 현재 화면의 Scaffold 위젯에 스낵바를 표시합니다.
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            icon: Icon(
         Icons.get_app
            ),
          ),
          if(itinerary != null)...{
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () async {
              final int? picked = await showCupertinoModalPopup<int>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 200.0,
                    color: CupertinoColors.white,
                    child: CupertinoPicker(
                      itemExtent: 32.0,
                      onSelectedItemChanged: (int index) {
                        selectedDayIndexNotifier.setSelectedDayIndex(index);
                        setState(() {
                          currentDay = index + 1;
                        });
                      },
                      children: List<Widget>.generate(
                          itinerary.placesByDay.length, (int index) {
                        return Center(
                          child: Text('Day-${index + 1}'),
                        );
                      }),
                    ),
                  );
                },
              );
            },
          )},
        ],
      ),
      body: Stack(
        children: [
          itinerary != null
              ? DetailMapWidget(
                  mapX: double.parse(widget.searchDetailResult.mapX),
                  mapY: double.parse(widget.searchDetailResult.mapY),
                )
              : MapWidget(
                  mapX: double.parse(widget.searchDetailResult.mapX),
                  mapY: double.parse(widget.searchDetailResult.mapY)),
          Align(
            alignment: Alignment.bottomCenter,
            child: Tap(
              onTap: () {
                Nav.pop(context);
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 150,
                child: RoundedContainer(
                  borderColor: Colors.white,
                  backgroundColor: Colors.white,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: widget.searchImageResult != null &&
                                widget.searchImageResult.imagesUrl!.first !=
                                    '' &&
                                widget.searchImageResult.imagesUrl!.first !=
                                    'null'
                            ? CachedNetworkImage(
                                imageUrl:
                                    widget.searchImageResult.imagesUrl!.first,
                                width: 100,
                                height: 120,
                                fit: BoxFit.cover,
                              )
                            : Image.asset('assets/image/icon/colorHama.png',
                                width: 100, height: 120, fit: BoxFit.fill),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          widget.searchDetailResult.title.text.bold
                              .color(AppColors.primaryGrey)
                              .make(),
                          const Height(3),
                          const ReviewStar(),
                          const Height(5),
                          overviewText.text != null && overviewText.text != "null"
                              ? SizedBox(
                                  width: 220,
                                  child: overviewText.text
                                      .maxLines(2)
                                      .color(AppColors.secondGrey)
                                      .make())
                              : SizedBox(),
                          const Height(5),
                          widget.searchDetailResult.addr1.text
                              .color(AppColors.thirdGrey)
                              .size(10)
                              .make(),
                          const Height(5),
                        ],
                      ).pOnly(left: 10),
                    ],
                  ),
                ),
              ),
            ).pSymmetric(h: 10, v: 30),
          ),
        ],
      ),
    );
  }
}
