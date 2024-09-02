
import 'package:fast_app_base/screen/client/main/tab/information%20/search/s_space_search.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../common/common.dart';
import '../../../../../../../data/entity/traffic/vo_map_coordinates.dart';
import '../../../../../../../data/memory/traffic/map_coordinates_provider.dart';
import '../../../../../../../data/network/traffic_api.dart';

class SetDirectionWidget extends StatelessWidget {
  const SetDirectionWidget({
    super.key,
    required this.mapCoordinatesNoti,
    required this.mapCoordinates,
    required TrafficApi trafficApiProvider,
    required this.ref,
    required this.titleHeight,
  }) : _trafficApiProvider = trafficApiProvider;

  final MapCoordinatesNotifier mapCoordinatesNoti;
  final MapCoordinates mapCoordinates;
  final TrafficApi _trafficApiProvider;
  final WidgetRef ref;
  final double titleHeight;

  @override
  Widget build(BuildContext context) {
    final mapCoordinates = ref.watch(mapCoordinatesProvider);

    return Row(
      children: [
        Tap(

            onTap: () async{
              mapCoordinatesNoti.swapStartAndEnd();
              if (mapCoordinates.endTitle != '' && mapCoordinates.startTitle != '') {
                _trafficApiProvider.getInfoTraffic(
                    mapCoordinates.startX,
                    mapCoordinates.startY,
                    mapCoordinates.endX,
                    mapCoordinates.endY,
                    ref);
                _trafficApiProvider.getInfoCarTraffic(
                    mapCoordinates.startX,
                    mapCoordinates.startY,
                    mapCoordinates.endX,
                    mapCoordinates.endY,
                    ref);
              }
            },
            child: Icon(Icons.swap_horiz)),
        SizedBox(width: 10), // 아이콘과 텍스트 사이 간격 조정
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Tap(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const SpaceSearchFragment(null)),
                  );
                },
                child: RoundedContainer(
                  radius: 5,
                  padding:  EdgeInsets.symmetric(horizontal: 0, vertical: 1),
                  backgroundColor: AppColors.outline,
                  child: SizedBox(
                    width: double.infinity,
                    height: titleHeight,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: mapCoordinates.startTitle != ''
                          ? '${mapCoordinates.startTitle}'
                          .text
                          .make()
                          .pSymmetric(h: 5)
                          : '출발지를 선택해주세요.'
                          .text
                          .color(AppColors.thirdGrey)
                          .make()
                          .pSymmetric(h: 5),
                    ),
                  ),
                ).pOnly(bottom: 10),
              ),
              Tap(
                onTap: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const SpaceSearchFragment(null)),
                  );
                },
                child: RoundedContainer(
                  padding:  EdgeInsets.symmetric(horizontal: 0, vertical: 1),
                  radius: 5,
                  backgroundColor: AppColors.outline,
                  child: SizedBox(
                    height: titleHeight,
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: mapCoordinates.endTitle != ''
                          ? '${mapCoordinates.endTitle}'
                          .text
                          .make()
                          .pSymmetric(h: 5)
                          : '도착지를 선택해주세요.'
                          .text
                          .color(AppColors.thirdGrey)
                          .make()
                          .pSymmetric(h: 5),

                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Nav.pop(context);
          },
        ),
      ],
    );
  }
}