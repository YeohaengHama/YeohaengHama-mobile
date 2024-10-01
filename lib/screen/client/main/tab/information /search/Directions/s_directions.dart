import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/information%20/search/Directions/f_bus_direction.dart';
import 'package:fast_app_base/screen/client/main/tab/information%20/search/Directions/f_car_direction.dart';
import 'package:fast_app_base/screen/client/main/tab/information%20/search/Directions/w_set_direction.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../../../data/memory/traffic/map_coordinates_provider.dart';
import '../../../../../../../data/network/traffic_api.dart';
import '../../../../search/content_type_provider.dart';

class DirectionsFragment extends ConsumerStatefulWidget {
  const DirectionsFragment({super.key});

  @override
  ConsumerState<DirectionsFragment> createState() => _DirectionsFragmentState();
}

class _DirectionsFragmentState extends ConsumerState<DirectionsFragment>
    with SingleTickerProviderStateMixin {
  final TextEditingController searchController = TextEditingController();
  late final TabController tabController =
  TabController(length: 2, vsync: this);
  int currentIndex = 0;
  String contentTypeId = '';
  double titleHeight = 35;

  @override
  Widget build(BuildContext context) {
    final mapCoordinates = ref.read(mapCoordinatesProvider);
    final mapCoordinatesNoti = ref.read(mapCoordinatesProvider.notifier);
    final _trafficApiProvider = ref.read(trafficApiProvider);


    return Stack(
      children: [
        Scaffold(
          body: SafeArea(
            bottom: false,
            child: Column(
              children: [
                SetDirectionWidget(mapCoordinatesNoti: mapCoordinatesNoti, mapCoordinates: mapCoordinates, trafficApiProvider: _trafficApiProvider, ref: ref, titleHeight: titleHeight).pSymmetric(h: 5),
                const Height(10),
                tabBar,
                Expanded(
                  child: FutureBuilder<Widget>(
                    future: switchTabFragment(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        return snapshot.data ?? Container();
                      } else {
                        return CircularProgressIndicator();
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget get tabBar => Column(
    children: [
      TabBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        labelStyle:
        const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        labelColor: Colors.grey,
        controller: tabController,
        indicatorColor: AppColors.mainPurple,
        unselectedLabelStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelPadding: const EdgeInsets.symmetric(vertical: 5),
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        tabs: [
          Icon(
            Icons.directions_bus,
            color: currentIndex == 0 ? AppColors.mainPurple : Colors.grey,
          ),
          Icon(
            Icons.directions_car,
            color: currentIndex == 1 ? AppColors.mainPurple : Colors.grey,
          ),
        ],
      )
    ],
  );

  Future<void> switchTabContent(int index) async {
    try {
      switch (index) {
        case 0:
          ref.read(contentTypeIdProvider.notifier).state = '12';
          contentTypeId = ref.read(contentTypeIdProvider.notifier).state;
          break;
        case 1:
          ref.read(contentTypeIdProvider.notifier).state = '39';
          contentTypeId = ref.read(contentTypeIdProvider.notifier).state;
          break;

        default:
      }
    } catch (e, stackTrace) {
      print('Exception occurred during switchTabContent: $e');
      print('StackTrace: $stackTrace');
    }
  }

  Future<Widget> switchTabFragment() async {
    switch (currentIndex) {
      case 0:
        return BusDirectionFragment();
      case 1:
        return CarDirectionFragment();
      default:
        return Container();
    }
  }
}
