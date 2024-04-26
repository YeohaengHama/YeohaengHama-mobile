import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/menu/my_trip/diary/wirte/w_select_itinerary_list_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../data/memory/itinerary/itinerary_show_all_provider.dart';
import '../../itnierary/w_Itinerary_list.dart';

class SelectItineraryList extends ConsumerWidget {
  const SelectItineraryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allItinerary = ref.watch(ItineraryShowAllListProvider);
    return Expanded(
      child: allItinerary.isNotEmpty
          ? ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: allItinerary.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    RoundedContainer(
                      backgroundColor: AppColors.whiteGrey,

                        child: SelectItineraryListItem(
                            allItinerary: allItinerary[index]))
                  ],
                ).pSymmetric(v: 10);
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ).pOnly(bottom: 120),
    );
  }
}
