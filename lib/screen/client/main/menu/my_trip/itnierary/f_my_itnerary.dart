import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/itnierary/w_Itinerary_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../data/memory/itinerary/itinerary_show_all_provider.dart';
import '../../../../../../data/network/itinerary_api.dart';

class MyItneraryFragment extends ConsumerStatefulWidget {
  const MyItneraryFragment({super.key});

  @override
  ConsumerState<MyItneraryFragment> createState() => _MyItneraryFragmentState();
}

class _MyItneraryFragmentState extends ConsumerState<MyItneraryFragment> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final itineraryApi = ref.read(itineraryApiProvider);
    itineraryApi.showAllItinerary(ref);
  }

  @override
  Widget build(BuildContext context) {
    final allItinerary = ref.watch(ItineraryShowAllListProvider);
    return Expanded(
      child: allItinerary.isNotEmpty
          ? ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: allItinerary.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [ItineraryList(allItinerary: allItinerary[index])],
                ).pSymmetric(v: 10,h: 15);
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ).pOnly(bottom: 120),
    );
  }
}
