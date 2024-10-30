import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/itinerary/a_add_pick_place.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/provider/p_edit_mode.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../data/entity/itinerary/a_check_itinerary.dart';
import '../../../../../data/entity/itinerary/vo_delete_place.dart';
import '../../../../../data/entity/itinerary/vo_pick_place.dart';
import '../../../../../data/memory/area/selectedDayIndex_provider.dart';
import '../../../../../data/memory/account/user_provider.dart';
import '../../../../../data/network/itinerary_api.dart';

class PickAreaWidget extends ConsumerWidget {
  const PickAreaWidget(this.pickPlace, this.itinerary, {Key? super.key});
  final PickPlace pickPlace;
  final CheckItinerary itinerary;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _editModeProvider = ref.watch(editModeProvider);
    final isEdit = ref.watch(editModeProvider.notifier).state;

    final accountNotifier = ref.read(accountProvider.notifier);
    final ItineraryApi itineraryApi = ItineraryApi();
    final selectedDayIndexNotifier =
        ref.watch(selectedDayIndexNotifierProvider);
    final AddPickPlace addPickPlace = AddPickPlace(
        day: selectedDayIndexNotifier + 1,
        addr1: pickPlace.addr1,
        mapx: double.parse(pickPlace.mapx),
        mapy: double.parse(pickPlace.mapy),
        placeType: pickPlace.contentTypeId,
        placeNum: pickPlace.contentId,
        placeName: pickPlace.title,
        startTime: "string",
        endTime: "string",
        memo: "string",
        image: pickPlace.firstImage
    );
    final deletePlace = DeletePlace(
        accountId: int.parse(accountNotifier.state!.id),
        placeNum: pickPlace.contentId,
        contentTypeId: pickPlace.contentTypeId);

    return Tap(
      onTap: () async {
        if (!isEdit) {


          // showDialog(
          //   context: context,
          //   builder: (_) => AddAreaModal(pickPlace, itinerary), // Custom modal widget for editing travel dates
          // );
          await itineraryApi.PostAddEachPickPlace(ref, addPickPlace, null);
          await itineraryApi.postDeletePlace(deletePlace, ref);

        }
      },
      child: Container(
        width: 105,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: pickPlace.firstImage != "null" &&
                        pickPlace.firstImage.isNotEmpty
                    ? CachedNetworkImage(
                        imageUrl: pickPlace.firstImage,
                        width: 105,
                        height: 100,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        color: AppColors.forthGrey,
                        width: 105,
                        height: 100,
                      )),
            Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    pickPlace.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    pickPlace.addr1,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                    ),
                  )
                ],
              ).pSymmetric(v: 5, h: 10),
            ),
            if (isEdit)
              Align(
                alignment: Alignment.topRight,
                child: Tap(
                  onTap: () async {
                    await itineraryApi.postDeletePlace(deletePlace, ref);
                  },
                  child: Icon(
                    Icons.remove_circle,
                    color: AppColors.forthGrey,
                    size: 20,
                  ).pOnly(right: 2),
                ),
              )
          ],
        ),
      ).pOnly(left: 5),
    );
  }
}
