import 'package:fast_app_base/data/entity/itinerary/a_check_save_place.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_delete_place.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/common.dart';
import '../../data/entity/itinerary/vo_save_place.dart';
import '../../data/memory/Itinerary_provider.dart';
import '../../data/memory/area/area_detail_provider.dart';
import '../../data/memory/user_provider.dart';
import '../../data/network/itinerary_api.dart';

class IconsWidget extends ConsumerStatefulWidget {
  const IconsWidget({
    super.key,
  });

  @override
  ConsumerState<IconsWidget> createState() => _icons_widgetState();
}

class _icons_widgetState extends ConsumerState<IconsWidget> {
  bool isPickArea = false;
  late ItineraryApi itineraryApi; // itineraryApi 변수를 클래스 멤버로 선언


  @override
  void initState() {
    super.initState();
    itineraryApi = ref.read(itineraryApiProvider); // 올바른 itineraryApi 변수를 초기화
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      // 위젯이 빌드된 후에 checkSavePlace를 호출하여 isPickArea를 설정
      checkSavePlace();
    });
  }
  void checkSavePlace() async {
    final searchDetailResult = ref.read(DetailAreaApiResponseProvider).value;
    if (searchDetailResult != null) {
      final checkSavePlace = CheckSavePlace(
        placeNum: searchDetailResult.contentId,
        contentTypeId: searchDetailResult.contentTypeId,
      );
      try {
        final bool isSaved = await itineraryApi.checkSavePlace(checkSavePlace, ref);
        setState(() {
          isPickArea = isSaved;
        });
      } catch (e) {
        print('장소 확인 중 예외 발생: $e');
        // 에러 처리
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final searchDetailResult = ref.read(DetailAreaApiResponseProvider).value;
    final itineraryList = ref.watch(itineraryProvider);
    // final itineraryApi = ref.read(itineraryApiProvider);
    const eventIconsSize = 30.0;
    const evenIconsTextSize = 13.0;
    final accountNotifier = ref.read(accountProvider.notifier);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        width20,
        Expanded(
          child: IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              if (itineraryList.isNotEmpty) {
                setState(() {
                  isPickArea = !isPickArea;
                });
                final checkSavePlace = CheckSavePlace(placeNum: searchDetailResult!.contentId, contentTypeId: searchDetailResult.contentTypeId);
                final savePlace = SavePlace(
                  accountId: int.parse(accountNotifier.state!.id)!,
                  placeNum: searchDetailResult!.contentId, // 여기에 장소 번호를 제공합니다.
                  contentTypeId:
                      searchDetailResult.contentTypeId, // 여기에 콘텐츠 유형 ID를 제공합니다.
                );
                final deletePlace = DeletePlace(
                    accountId: int.parse(accountNotifier.state!.id),
                    placeNum: searchDetailResult.contentId,
                    contentTypeId: searchDetailResult.contentTypeId
                );
                isPickArea
                    ?  itineraryApi.postSavePlace(savePlace, ref)
                    :itineraryApi.postDeletePlace(deletePlace, ref);

              } else {
                const snackBar = SnackBar(
                  content: Text('아직 일정이 추가 되지 않았습니다.'),
                  duration: Duration(seconds: 2),
                  backgroundColor: AppColors.mainPurple,
                );

                // 현재 화면의 Scaffold 위젯에 스낵바를 표시합니다.

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            icon: Column(
              children: [
                Icon(
                  isPickArea ? Icons.favorite : Icons.favorite_outline,
                  color: isPickArea ? Colors.red : null,
                  size: eventIconsSize,
                ),
                '장소담기'
                    .text
                    .size(evenIconsTextSize)
                    .bold
                    .color(AppColors.secondGrey)
                    .make()
              ],
            ),
          ),
        ),
        Expanded(
          child: IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {},
            icon: Column(
              children: [
                const Icon(
                  Icons.star_border_rounded,
                  size: eventIconsSize + 5,
                ),
                '리뷰쓰기'
                    .text
                    .size(evenIconsTextSize)
                    .bold
                    .color(AppColors.secondGrey)
                    .make()
              ],
            ),
          ),
        ),
        Expanded(
          child: IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {},
            icon: Column(
              children: [
                const Icon(
                  Icons.ios_share_outlined,
                  size: eventIconsSize - 2,
                ),
                '공유하기'
                    .text
                    .size(evenIconsTextSize)
                    .bold
                    .color(AppColors.secondGrey)
                    .make()
              ],
            ),
          ),
        ),
        width20,
      ],
    );
  }
}
