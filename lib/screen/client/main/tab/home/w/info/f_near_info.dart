import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../data/entity/area/serch_detail_result.dart';
import '../../../information /search/detail/s_draggable_info.dart';
import 'f_near_info_map.dart';

class NearInfoFragment extends ConsumerWidget {
  const NearInfoFragment(this.searchDetailResult, {super.key});
  final SearchDetailResult? searchDetailResult;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: searchDetailResult != null
                ? NearInfoMap(
              mapX: double.parse(searchDetailResult!.mapX),
              mapY: double.parse(searchDetailResult!.mapY),
            )
                : Center(child: Text('No location data available')),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.2,
            minChildSize: 0.05,
            maxChildSize: 1,
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
                            SizedBox(
                              height: constraints.maxHeight - 20, // Adjust height accordingly
                              child: searchDetailResult != null
                                  ? DraggableInfoScreen(
                                searchSimpleResult: searchDetailResult!,
                              )
                                  : Center(child: Text('No details available')),
                            ),
                          ],
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
