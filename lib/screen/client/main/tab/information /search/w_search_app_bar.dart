import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_text_field_with_delete.dart';
import 'package:fast_app_base/screen/client/main/search/provider/is_loading_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

import '../../../../../../common/widget/w_arrow.dart';
import '../../../../../../data/entity/open_api/open_api_area.dart';
import '../../../../../../data/memory/search/search_simple_area_provider.dart';
import '../../../../../../data/memory/search/search_simple_restaurant_provider.dart';
import '../../../../../../data/memory/traffic/map_coordinates_provider.dart';
import '../../../../../../data/network/area_api.dart';
import '../../../../../../data/entity/traffic/vo_map_coordinates.dart';
import 'Directions/s_directions.dart';

class SearchAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final TextEditingController controller;
  final String hintText;
  final String contentTypeId;

  const SearchAppBar(
      {super.key,
        required this.contentTypeId,
        required this.controller,
        required this.hintText});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = ref.read(isLoadingProvider.notifier);

    Future<void> postSearchArea() async {
      final openApiArea = OpenApiArea(
        numOfRows: '100',
        page: '1',
        contentTypeId: '12',
        keyword: controller.text,
        mobileOS: 'IOS',
      );
      final areaApi = ref.read(areaApiProvider);
      await areaApi.postSearchTourismArea(openApiArea, ref);
    }

    Future<void> postSearchRestaurantArea() async {
      final openApiArea = OpenApiArea(
        numOfRows: '100',
        page: '1',
        contentTypeId: '39',
        keyword: controller.text,
        mobileOS: 'IOS',
      );
      final areaApi = ref.read(areaApiProvider);
      await areaApi.postSearchRestaurantArea(openApiArea, ref);
      isLoading.setLoading(false);

    }

    Future<void> _getCurrentLocationAndUpdateStart(WidgetRef ref) async {
      bool serviceEnabled;
      LocationPermission permission;

      // 위치 서비스가 활성화되어 있는지 확인
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        return Future.error('Location services are disabled.');
      }

      // 위치 권한 확인
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return Future.error('Location permissions are denied');
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return Future.error('Location permissions are permanently denied, we cannot request permissions.');
      }

      // 현재 위치 가져오기
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

      // reverse geocoding으로 도로명 주소 가져오기
      List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
      String startTitle = placemarks.first.street ?? 'Unknown location';

      // mapCoordinatesProvider의 setStart 호출
      ref.read(mapCoordinatesProvider.notifier).setStart(startTitle, position.longitude, position.latitude);
      Nav.pop(context);

      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const DirectionsFragment())
      );

    }

    return SafeArea(
      child: Row(
        children: [
          Tap(
              onTap: () => Nav.pop(context),
              child: const SizedBox(
                  height: kToolbarHeight,
                  width: 56,
                  child: Arrow(
                    direction: AxisDirection.left,
                  ))),
          Expanded(
            child: TextFieldWithDelete(
              controller: controller,
              textInputAction: TextInputAction.search,
              texthint: hintText,
              deleteRightPadding: 0,
            ).pOnly(top: 6),
          ),
          IconButton(
            onPressed: () async {
              await _getCurrentLocationAndUpdateStart(ref);
            },
            icon: Icon(Icons.gps_fixed_rounded),
          ),
          IconButton(
            onPressed: () async {
              if(controller.text != null) {
                isLoading.setLoading(true);

                postSearchArea();
                postSearchRestaurantArea();
                // SearchSimpleResult가 비어있지 않으면 리스트 비우기
                final simpleAreaNotifier =
                ref.read(simpleAreaApiResponseProvider.notifier);
                final simpleAreaRestaurantNotifier = ref
                    .read(simpleAreaRestaurantApiResponseProvider.notifier);

                if (simpleAreaNotifier.state.isNotEmpty) {
                  simpleAreaNotifier.state = [];
                }
                if (simpleAreaRestaurantNotifier.state.isNotEmpty) {
                  simpleAreaRestaurantNotifier.state = [];
                }
              }
            },
            icon: Icon(Icons.search),
          ).pOnly(right: 5, top: 6)
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
