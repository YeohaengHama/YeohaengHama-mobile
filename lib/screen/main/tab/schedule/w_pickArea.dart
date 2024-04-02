import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/itinerary/a_add_pick_place.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../data/entity/itinerary/a_check_itinerary.dart';
import '../../../../data/entity/itinerary/vo_pick_place.dart';
import '../../../../data/memory/area/selectedDayIndex_provider.dart';
import '../../../../data/network/itinerary_api.dart';


class PickAreaWidget extends ConsumerWidget {
  const PickAreaWidget( this.pickPlace, this.itinerary, {Key? key})
      : super(key: key);
  final PickPlace pickPlace;
  final CheckItinerary itinerary;
  

  
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ItineraryApi itineraryApi= ItineraryApi();
    final selectedDayIndexNotifier = ref.watch(selectedDayIndexNotifierProvider.notifier);
    final AddPickPlace addPickPlace = AddPickPlace(day: selectedDayIndexNotifier.state, placeType: pickPlace.contentTypeId, placeNum: pickPlace.contentId, placeName:pickPlace.title,startTime: "string", endTime: "string",memo: "string" );
    return Tap(
      onTap: () {
        itineraryApi.PostAddPickPlace(addPickPlace, ref);
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
              child: CachedNetworkImage(
                imageUrl: pickPlace.firstImage,
                width: 105,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
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
            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.remove_circle,color: AppColors.forthGrey,size: 20,).pOnly(right: 2),
            )
          ],
        ),
      ).pOnly(left: 5),
    );
  }
}
