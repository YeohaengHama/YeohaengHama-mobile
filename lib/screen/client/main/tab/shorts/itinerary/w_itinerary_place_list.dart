import 'package:fast_app_base/common/common.dart';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../data/entity/itinerary/a_check_itinerary.dart';
import '../../../../post_detail/s_post_detail.dart';

class ItineraryPlaceListWidget extends ConsumerWidget {
  final PlaceByDay place; // 가정한 프로퍼티입니다. 실제 코드에 맞게 조정해주세요.

  ItineraryPlaceListWidget(this.place, {Key? super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 여기서는 ref를 직접 사용할 수 있습니다.

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tap(
          onTap: () async {
           Nav.push(PostDetailScreen(place: place,));
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              place.placeName.text.color(AppColors.primaryGrey).bold.make(),
              place.addr1.text
                  .color(AppColors.secondGrey)
                  .size(10)
                  .make()
                  .pSymmetric(v: 5),
            ],
          ),
        ),
      ],
    ).pSymmetric(h: 5);
  }
}
