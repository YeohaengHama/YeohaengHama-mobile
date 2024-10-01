import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/area/vo_area.dart';



import 'package:flutter/material.dart';

import '../../../../data/entity/itinerary/vo_itinerary.dart';
import '../../../../data/memory/itinerary/Itinerary_provider.dart';
import '../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../data/network/itinerary_api.dart';
import '../../main/s_main.dart';
import '../../main/tab/tab_item.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class AreasWidget extends ConsumerWidget {
  const AreasWidget(this.area, this.isEditMode, {Key? super.key,});
  final HamaArea area;
  final bool isEditMode;
  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final itineraryApi = ItineraryApi();

    return Container(
      child: Row(
        children: [
          Image.asset(
            area.areaImages,
            width: 45,
            height: 45,
            fit: BoxFit.cover,
          ),
          width10,
          SizedBox(
            height: 45,
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                area.area.text.bold.color(AppColors.primaryGrey).size(13).make().pOnly(top: 3),
                area.area.text.bold.color(AppColors.thirdGrey).size(9).make().pOnly(bottom: 3),
              ],
            ),
          ),
          RoundButton(
            text: '선택',
            onTap: () async{
              if( isEditMode == false ){
                // 선택한 지역 정보를 ItineraryProvider에 저장
                final itineraryProviderNotifier = ref.watch(itineraryProvider.notifier);
                itineraryProviderNotifier.setSelectedArea(area.area);

                final newItinerary = Itinerary(
                  name: '${itineraryProviderNotifier.selectedArea} 여행',
                  type: itineraryProviderNotifier.selectedWhoTags,
                  itineraryStyle: itineraryProviderNotifier.selectedStyleTags,
                  transportation: 'bus',
                  area: itineraryProviderNotifier.selectedArea!,
                  startDate: itineraryProviderNotifier.selectedStartDate!,
                  endDate: itineraryProviderNotifier.selectedEndDate!,
                  expense: '0',
                );
                await itineraryApi.postJoinItinerary(newItinerary, ref);
                itineraryProviderNotifier.addItinerary(newItinerary);


                // 현재까지 쌓인 창을 pop하고 MainScreen으로 이동
                Navigator.popUntil(context, (route) => route.isFirst);
                Nav.push(const MainScreen(initialTab: TabItem.schedule));
              } else {
                final currentItinerary = ref.read(itineraryCheckProvider);
                final editItinerary = Itinerary(
                  name: currentItinerary!.name,
                  type: currentItinerary.type!,
                  itineraryStyle: currentItinerary.style!,
                  transportation: 'bus',
                  area: area.area,
                  startDate: currentItinerary.startDate,
                  endDate: currentItinerary.endDate,
                  expense: '',
                );
                await itineraryApi.editItinerary(editItinerary, ref);
                Nav.pop(context);
              }


            },
            bgColor: AppColors.outline,
            textColor: AppColors.primaryGrey,
            fontWeight: FontWeight.bold,
            fontSize: 12,
            height: 28,
          ),
        ],
      ).pOnly(top: 10, left: 20, bottom: 10),
    );
  }
}
