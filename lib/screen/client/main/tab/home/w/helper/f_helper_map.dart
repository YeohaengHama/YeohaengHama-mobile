import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../data/entity/area/serch_detail_result.dart';
import '../../../information /search/detail/s_draggable_info.dart';
import '../info/f_near_info_map.dart';

class HelperMapFragment extends ConsumerWidget {
  const HelperMapFragment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: NearInfoMap(
            )
          ),
        ],
      ),
    );
  }
}
