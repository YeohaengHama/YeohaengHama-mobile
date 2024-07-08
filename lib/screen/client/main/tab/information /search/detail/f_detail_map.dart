import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/information%20/search/detail/w_area_info_map.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../../data/entity/area/search_simple_toursim_result.dart';
import '../../../../../../../data/memory/area/area_detail_provider.dart';
import '../../../../../post_detail/s_post_detail.dart';
import '../../../../../post_detail/w_map.dart';
import '../../f_search_location_area.dart'; // 적절한 경로로 수정하세요

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
    final searchResult = widget.searchSimpleResult;
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text(
                  searchResult.title,
                  style: TextStyle(fontSize: 15),
                ),
                centerTitle: false,
                pinned: true,
                actions: [RoundedContainer(
                  borderColor: AppColors.mainPurple,
                    radius: 20,
                    padding:  EdgeInsets.symmetric(horizontal: 10, vertical:5),
                    child: '출발'.text.make()).pOnly(right: 10), RoundedContainer(
                    borderColor: AppColors.mainPurple,
                    backgroundColor: AppColors.mainPurple,
                    radius: 20,
                    padding:  EdgeInsets.symmetric(horizontal: 10, vertical:5),
                    child: '도착'.text.color(Colors.white).make()).pOnly(right: 20)],
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
            initialChildSize: 0.3,
            minChildSize: 0.3,
            maxChildSize: 0.8,
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
                                child: TestPostDetailScreen(
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
