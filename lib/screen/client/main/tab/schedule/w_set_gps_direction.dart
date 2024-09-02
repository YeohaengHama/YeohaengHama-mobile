import 'package:fast_app_base/screen/client/main/tab/information%20/search/s_space_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../common/common.dart';
import '../../../../../../../data/entity/traffic/vo_map_coordinates.dart';
import '../../../../../../../data/memory/traffic/map_coordinates_provider.dart';
import '../../../../../../../data/network/traffic_api.dart';

class SetGpsDirectionWidget extends StatelessWidget {
  const SetGpsDirectionWidget({
    super.key,
    required this.currentAddress,
    required this.markerPlaceName,
    required this.currentLocation,
    required this.markerPosition,
    required TrafficApi trafficApiProvider,
    required this.ref,
    required this.titleHeight,
  }) : _trafficApiProvider = trafficApiProvider;

  final String currentAddress;
  final String markerPlaceName;
  final Position currentLocation;
  final NLatLng markerPosition;
  final TrafficApi _trafficApiProvider;
  final WidgetRef ref;
  final double titleHeight;

  @override
  Widget build(BuildContext context) {
    final mapCoordinates = ref.watch(mapCoordinatesProvider);

    return Row(
      children: [
        Width(30),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Tap(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SpaceSearchFragment(null)),
                  );
                },
                child: RoundedContainer(
                  radius: 5,
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 1),
                  backgroundColor: AppColors.outline,
                  child: SizedBox(
                    width: double.infinity,
                    height: titleHeight,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child:
                          '${currentAddress}'
                              .text
                              .make()
                              .pSymmetric(h: 5)
                    ),
                  ),
                ).pOnly(bottom: 10),
              ),
              Tap(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SpaceSearchFragment(null)),
                  );
                },
                child: RoundedContainer(
                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 1),
                  radius: 5,
                  backgroundColor: AppColors.outline,
                  child: SizedBox(
                    height: titleHeight,
                    width: double.infinity,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: '$markerPlaceName'
                              .text
                              .make()
                              .pSymmetric(h: 5)

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
