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
    final searchDetailResult =
        ref.read(DetailAreaApiResponseProvider).value;
    final searchResult = widget.searchSimpleResult;
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text(
                  searchResult.title,
                  style: TextStyle(fontSize: 12),
                ),
                centerTitle: false,
                pinned: true,
              ),
              SliverFillRemaining(
                child: searchDetailResult!.mapX != null ? MapWidget(
                    mapX: double.parse(searchDetailResult.mapX),
                    mapY: double.parse(searchDetailResult.mapY)): Container(), // 여기에 SearchLocationArea 위젯을 사용합니다.
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
                                    searchSimpleResult: searchResult!), // 여기에 TestPostDetailScreen 위젯을 추가합니다.
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
