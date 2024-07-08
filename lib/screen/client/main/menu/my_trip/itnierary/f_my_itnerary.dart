import 'package:animation_list/animation_list.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/itnierary/w_Itinerary_list.dart';
import 'package:fast_app_base/screen/client/main/menu/my_trip/itnierary/w_no_itinerary_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../../../data/memory/itinerary/itinerary_show_all_provider.dart';
import '../../../../../../data/memory/itinerary/share_itinerary_list_provider.dart';
import '../../../../../../data/network/itinerary_api.dart';

class MyItneraryFragment extends ConsumerStatefulWidget {
  const MyItneraryFragment({Key? key}) : super(key: key);

  @override
  ConsumerState<MyItneraryFragment> createState() => _MyItneraryFragmentState();
}

class _MyItneraryFragmentState extends ConsumerState<MyItneraryFragment> {
  late Future<void> _loadItineraryFuture;

  @override
  void initState() {
    super.initState();
    _loadItineraryFuture = _loadItinerary();
  }

  Future<void> _loadItinerary() async {
    final itineraryApi = ref.read(itineraryApiProvider);
    await itineraryApi.showAllItinerary(ref);
    await itineraryApi.showAllShareItinerary(ref);
  }

  @override
  Widget build(BuildContext context) {
    final allItinerary = ref.watch(ItineraryShowAllListProvider);
    final allShareItinerary = ref.watch(shareItineraryListProvider);

    // 두 리스트를 결합하여 중복을 제거하고 allShareItinerary가 먼저 오도록 함
    final combinedItinerary = [
      ...{...allShareItinerary, ...allItinerary}
    ];

    return Expanded(
      child: FutureBuilder<void>(
        future: _loadItineraryFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // 로딩 중일 때는 로딩 인디케이터 표시
            return Center(
                child: LoadingAnimationWidget.fallingDot(
                    color: AppColors.mainPurple, size: 100));
          } else if (snapshot.connectionState == ConnectionState.done) {
            // 응답이 완료되었을 때
            if (snapshot.hasError) {
              // 에러가 발생했을 때
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              // 정상적으로 데이터를 받아왔을 때
              if (combinedItinerary.isNotEmpty) {
                return Center(
                  child: AnimationList(
                    duration: 1100,
                    reBounceDepth: 10.0,
                    children: combinedItinerary.reversed.map((itinerary) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ItineraryList(allItinerary: itinerary),
                      );
                    }).toList(),
                  ),
                );
              } else {
                // 데이터가 비어있을 때
                return NoItnieraryListWidget();
              }
            }
          } else {
            // 초기 상태나, 데이터 로딩이 완료되지 않은 경우
            return SizedBox.shrink();
          }
        },
      ),
    );
  }
}
