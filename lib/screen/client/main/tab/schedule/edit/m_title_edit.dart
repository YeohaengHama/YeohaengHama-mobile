import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../data/entity/itinerary/vo_itinerary.dart';
import '../../../../../../data/memory/itinerary/itinerary_check_provider.dart';
import '../../../../../../data/network/itinerary_api.dart';

class TitleEditModal extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String title = ''; // 여행 제목을 저장할 변수

    return AlertDialog(
      backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      title: Text('여행 제목', style:TextStyle(fontWeight: FontWeight.bold),),
      content: Container(
        width: double.maxFinite,
        child: TextField(
          onChanged: (value) {
            title = value;
          },
          decoration: InputDecoration(
            hintText: '여행 제목을 입력하세요',


          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('취소', style: TextStyle(color: AppColors.thirdGrey),),
        ),
        spacer,
        TextButton(
          onPressed: () async{
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
            Nav.pop(context);
           // 입력한 제목을 모달을 닫고 함께 전달
          },
          child: Text('확인', style: TextStyle(color: AppColors.mainPurple)),
        ),
      ],
    );
  }
}
