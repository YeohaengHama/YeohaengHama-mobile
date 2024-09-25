import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/addAreaPick/w_day_place_list.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../data/entity/itinerary/vo_itinerary.dart';
import '../../../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../../../data/network/itinerary_api.dart';
import '../../../../../../data/entity/itinerary/a_add_pick_place.dart';
import '../../../../../../data/entity/itinerary/a_check_itinerary.dart';
import '../../../../../../data/entity/itinerary/vo_pick_place.dart';
import '../../../../../../data/memory/itinerary/add_pick_each_place_provider.dart';

class AddAreaModal extends ConsumerStatefulWidget {
  const AddAreaModal(this.pickPlace, this.itinerary, {Key? key}) : super(key: key);
  final PickPlace pickPlace;
  final CheckItinerary itinerary;

  @override
  ConsumerState<AddAreaModal> createState() => _AddAreaModalState();
}

class _AddAreaModalState extends ConsumerState<AddAreaModal> {
  @override
  Widget build(BuildContext context) {
    final int placeCount = widget.itinerary.placesByDay.length;
    final addPickPlaceListNotifier = ref.watch(addPickEachPlaceProvider);

    // 데이터가 없을 때를 대비한 처리
    if (addPickPlaceListNotifier == null || addPickPlaceListNotifier.isEmpty) {
      return Center(child: Text('추가할 장소가 없습니다.'));
    }

    String title = ''; // 여행 제목을 저장할 변수

    return AlertDialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      title: Text(
        '장소 추가',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: SizedBox(
        width: 200,
        height: 500,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: placeCount,
          itemBuilder: (context, index) {
            List<AddPickPlace> filteredList = addPickPlaceListNotifier
                .where((element) => element.day == index)
                .toList();
            return DayPlaceListWidget(addPickPlace: filteredList, day: index + 1, pickPlace: widget.pickPlace,); // day + 1로 수정
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            '취소',
            style: TextStyle(color: AppColors.thirdGrey),
          ),
        ),
        TextButton(
          onPressed: () async {
            final itineraryApi = ItineraryApi();
            // 확인 버튼을 눌렀을 때 동작
            final currentItinerary = ref.read(itineraryCheckProvider);
            final editItinerary = Itinerary(
              name: title,
              type: currentItinerary!.type!,
              itineraryStyle: currentItinerary.style!,
              transportation: 'bus',
              area: currentItinerary.area,
              startDate: currentItinerary.startDate,
              endDate: currentItinerary.endDate!,
              expense: '',
            );
            await itineraryApi.editItinerary(editItinerary, ref);
            Navigator.pop(context);
          },
          child: Text(
            '확인',
            style: TextStyle(color: AppColors.mainPurple),
          ),
        ),
      ],
    );
  }
}
