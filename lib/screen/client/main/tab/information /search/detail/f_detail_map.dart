import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/information%20/search/detail/s_draggable_info.dart';
import 'package:fast_app_base/screen/client/main/tab/information%20/search/detail/w_area_info_map.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../../data/memory/area/area_detail_provider.dart';
import '../../../../../../../data/memory/traffic/map_coordinates_provider.dart';
import '../../../../../../../data/network/traffic_api.dart';

import '../Directions/s_directions.dart'; // 적절한 경로로 수정하세요

class DetailMap extends ConsumerStatefulWidget {
  const DetailMap({super.key, required this.searchSimpleResult});

  final dynamic searchSimpleResult;

  @override
  ConsumerState<DetailMap> createState() => _DetailMapState();
}

class _DetailMapState extends ConsumerState<DetailMap> {
  @override
  Widget build(BuildContext context) {
    final searchDetailResult = ref.read(DetailAreaApiResponseProvider).value;
    final searchDetailResultP = ref.watch(DetailAreaApiResponseProvider);

    final searchResult = widget.searchSimpleResult;
    final mapCoordinates = ref.read(mapCoordinatesProvider.notifier);
    final _mapCoordinatesProvider = ref.read(mapCoordinatesProvider);
    final _trafficApiProvider = ref.read(trafficApiProvider);
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.white,
                title: Text(
                  searchDetailResult!.title,
                  style: TextStyle(fontSize: 15),
                ),
                centerTitle: false,
                pinned: true,
                actions: [
                  Tap(
                    onTap: () async {
                      mapCoordinates.setStart(
                          searchDetailResult!.title,
                          double.parse(searchDetailResult!.mapX),
                          double.parse(searchDetailResult!.mapY));
                      if (_mapCoordinatesProvider.endTitle != '') {
                        _trafficApiProvider.getInfoTraffic(
                            mapCoordinates.state.startX,
                            mapCoordinates.state.startY,
                            _mapCoordinatesProvider.endX,
                            _mapCoordinatesProvider.endY,
                            ref);
                        _trafficApiProvider.getInfoCarTraffic(
                            mapCoordinates.state.startX,
                            mapCoordinates.state.startY,
                            _mapCoordinatesProvider.endX,
                            _mapCoordinatesProvider.endY,
                            ref);
                      }
                      Nav.pop(context);
                      Nav.pop(context);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DirectionsFragment()),
                      );
                    },
                    child: RoundedContainer(
                            borderColor: AppColors.mainPurple,
                            radius: 20,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: '출발'.text.make())
                        .pOnly(right: 10),
                  ),
                  Tap(
                    onTap: () async {
                      mapCoordinates.setEnd(
                          searchDetailResult!.title,
                          double.parse(searchDetailResult!.mapX),
                          double.parse(searchDetailResult!.mapY));

                      if (_mapCoordinatesProvider.startTitle != '') {
                        await _trafficApiProvider.getInfoTraffic(
                            _mapCoordinatesProvider.startX,
                            _mapCoordinatesProvider.startY,
                            mapCoordinates.state.endX,
                            mapCoordinates.state.endY,
                            ref);
                        await _trafficApiProvider.getInfoCarTraffic(
                            _mapCoordinatesProvider.startX,
                            _mapCoordinatesProvider.startY,
                            mapCoordinates.state.endX,
                            mapCoordinates.state.endY,
                            ref);



                      }
                      Nav.pop(context);
                      Nav.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DirectionsFragment()),
                      );
                    },
                    child: RoundedContainer(
                            borderColor: AppColors.mainPurple,
                            backgroundColor: AppColors.mainPurple,
                            radius: 20,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: '도착'.text.color(Colors.white).make())
                        .pOnly(right: 20),
                  )
                ],
              ),
              SliverFillRemaining(
                child: searchDetailResult!.mapX != null
                    ? AreaInfoMap(
                        mapX: double.parse(searchDetailResult.mapX),
                        mapY: double.parse(searchDetailResult.mapY))
                    : Container(), // 여기에 SearchLocationArea 위젯을 사용합니다.
              ),
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.1,
            minChildSize: 0.05,
            maxChildSize: 0.87,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                color: Colors.white,
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return SingleChildScrollView(
                      controller: scrollController,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: constraints.maxHeight,
                        ),
                        child: IntrinsicHeight(
                          child: Column(
                            children: [
                              Container(
                                width: 50,
                                height: 5,
                                margin: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              Expanded(
                                child: DraggableInfoScreen(
                                    searchSimpleResult:
                                        searchResult!), // 여기에 TestPostDetailScreen 위젯을 추가합니다.
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
