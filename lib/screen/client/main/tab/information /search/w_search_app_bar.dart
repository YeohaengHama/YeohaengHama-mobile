import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_text_field_with_delete.dart';
import 'package:fast_app_base/screen/client/main/search/provider/is_loading_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../common/widget/w_arrow.dart';
import '../../../../../../data/entity/open_api/open_api_area.dart';
import '../../../../../../data/memory/search/search_simple_area_provider.dart';
import '../../../../../../data/memory/search/search_simple_restaurant_provider.dart';
import '../../../../../../data/network/area_api.dart';



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
                  onPressed: () async{
                    isLoading.setLoading(true);
                    postSearchArea();
                    postSearchRestaurantArea();
                    ();
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
                               },
                  icon: Icon(Icons.search))
              .pOnly(right: 5, top: 6)
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}
