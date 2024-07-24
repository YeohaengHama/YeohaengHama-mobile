import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/diary/wirte/w_select_itinerary_list_item.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/itnierary/w_no_itinerary_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../data/memory/itinerary/itinerary_show_all_provider.dart';
import '../../../../../../../data/memory/shorts/p_short_write.dart';

class SelectItineraryList extends ConsumerWidget {
  const SelectItineraryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allItinerary = ref.watch(ItineraryShowAllListProvider);

    if (allItinerary.isNotEmpty) {
      return Expanded(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: allItinerary.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                RoundedContainer(
                  backgroundColor: AppColors.whiteGrey,
                  child: SelectItineraryListItem(
                    allItinerary: allItinerary[index],
                  ),
                ),
              ],
            ).pSymmetric(v: 10);
          },
        ),
      );
    } else {
      return RoundedContainer(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          borderColor: AppColors.mainPurple,
          radius: 10,
          borderWidth: 1,
          child: NoItnieraryListWidget()).pSymmetric(v:30);
    }
  }
}

