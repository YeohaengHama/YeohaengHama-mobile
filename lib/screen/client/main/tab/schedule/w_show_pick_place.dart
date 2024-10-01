import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/provider/p_edit_mode.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/traffic/selected_transportation_index_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../../common/dart/extension/calculate_distance.dart';
import '../../../../../data/entity/itinerary/a_add_pick_place.dart';
import '../../../../../data/memory/itinerary/add_pick_each_place_provider.dart';
import '../../../../../data/network/itinerary_api.dart';

import '../../../../../data/network/traffic_api.dart';
import '../home/w/info/s_pick_place_info.dart';

class ShowPickPlace extends ConsumerWidget {
  const ShowPickPlace(this.currentDay, {Key? super.key});
  final int currentDay;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const radiusBold = 2.5;
    final addPickPlaceListNotifier = ref.watch(addPickEachPlaceProvider);
    final ItineraryApi itineraryApi = ItineraryApi();
    final PageController pageController = PageController();

    final ValueNotifier<int> currentPageNotifier = ValueNotifier<int>(0);
    print(currentDay);
    // 현재 일치하는 요소만 필터링
    List<AddPickPlace> filteredList = addPickPlaceListNotifier
        .where((element) => element.day == currentDay)
        .toList();
    print('필터리스트:$filteredList');

    pageController.addListener(() {
      int nextPage = pageController.page?.round() ?? 0;
      if (currentPageNotifier.value != nextPage) {
        currentPageNotifier.value = nextPage;
      }
    });

    return Column(
      children: [
        Container(
          height: 70,
          child: filteredList.isEmpty
              ? SizedBox(
                  child: Center(
                      child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    '아직 추가 된 장소가 없어요'
                        .text
                        .color(AppColors.thirdGrey)
                        .bold
                        .make(),
                    '장소를 추가해 볼까요?'.text.color(AppColors.thirdGrey).make(),
                  ],
                ))).pSymmetric(h: 70)
              : filteredList.length == 1
                  ? Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            buildPickPlaceItem(context, ref, itineraryApi,
                                filteredList, radiusBold, 0)
                          ]),
                    )
                  : ListView.builder(
                      controller: pageController,
                      scrollDirection: Axis.horizontal,
                      itemCount: filteredList.length,
                      itemBuilder: (context, index) {
                        return buildPickPlaceItem(context, ref, itineraryApi,
                            filteredList, radiusBold, index);
                      },
                    ),
        ).pOnly(bottom: filteredList.isEmpty ? 12 : 0),
        SizedBox(height: 16),
        filteredList.isEmpty
            ? Container()
            : ValueListenableBuilder<int>(
                valueListenable: currentPageNotifier,
                builder: (context, currentPage, child) {
                  return SmoothPageIndicator(
                    controller: pageController,
                    count: filteredList.length,
                    effect: const ScrollingDotsEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      activeDotScale: 1.5,
                      activeDotColor: AppColors.mainPurple,
                      dotColor: AppColors.thirdGrey,
                    ),
                    onDotClicked: (index) {
                      pageController.animateToPage(index,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    },
                  );
                },
              ),
      ],
    );
  }

  Widget buildPickPlaceItem(
      BuildContext context,
      WidgetRef ref,
      ItineraryApi itineraryApi,
      List<AddPickPlace> filteredList,
      double radiusBold,
      int index) {
    final addPickPlace = filteredList[index];
    final trafficApi = ref.read(trafficApiProvider);
    final selectedPathIndex =
        ref.read(selectedTrafficRouteIndexNotifierProvider.notifier);
    final editModeProviderWactch = ref.watch(editModeProvider);
    final isEdit = ref.watch(editModeProvider.notifier).state;
    return Row(
      children: [
        Tap(
          onTap: () {
            isEdit
                ? itineraryApi.PostDeleteEachPickPlace(
                    ref, addPickPlace.placeId!)
                : Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PickPlaceInfoScreen(addPickPlace)),
                  );
          },
          child: RoundedContainer(
            radius: 20,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            backgroundColor: Colors.white,
            borderColor: AppColors.outline,
            borderWidth: radiusBold,
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.mainPurple,
                        ),
                        padding: const EdgeInsets.all(4),
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ).pOnly(right: 4),
                      SizedBox(
                        child: addPickPlace.placeName!.text
                            .maxLines(2)
                            .color(AppColors.primaryGrey)
                            .size(15)
                            .bold
                            .make(),
                      ),
                    ],
                  ),
                  addPickPlace.addr1 != null
                      ? addPickPlace.addr1.text
                          .color(AppColors.thirdGrey)
                          .size(10)
                          .make()
                      : ''.text.size(15).make(),
                ],
              ),
            ),
          ),
        ),
        if (index < filteredList.length - 1)
          Tap(
            onTap: () {
              trafficApi.getTransportInfo(
                  addPickPlace.mapx,
                  addPickPlace.mapy,
                  filteredList[index + 1].mapx,
                  filteredList[index + 1].mapy,
                  ref);
              selectedPathIndex.setSelectedTrafficRouteIndex(0);
            },
            child: Row(
              children: [
                Line(color: AppColors.outline, height: radiusBold, width: 5),
                RoundedContainer(
                  borderColor: AppColors.outline,
                  borderWidth: radiusBold,
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  radius: 20,
                  child: Container(
                    alignment: Alignment.center,
                    height: 15,
                    child: Text(
                      '${calculateDistance(
                        addPickPlace.mapy,
                        addPickPlace.mapx,
                        filteredList[index + 1].mapy,
                        filteredList[index + 1].mapx,
                      ).toStringAsFixed(1)} km',
                      style: TextStyle(
                          color: AppColors.primaryGrey,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ).pSymmetric(v: 0),
                  ).pSymmetric(h: 2),
                ),
                Line(color: AppColors.outline, height: radiusBold, width: 5),
              ],
            ),
          ),
      ],
    );
  }
}
