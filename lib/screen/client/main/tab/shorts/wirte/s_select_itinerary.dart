import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/shorts/wirte/w_select_itinerary_list_item.dart';
import '../../../../../../data/memory/itinerary/itinerary_show_all_provider.dart';
import '../../../menu/my_trip/itnierary/w_no_itinerary_list.dart';

class SelectItineraryScreen extends ConsumerWidget {
  const SelectItineraryScreen({Key? super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allItinerary = ref.watch(ItineraryShowAllListProvider);

    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverPersistentHeader(
          delegate: _SliverAppBarDelegate(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Shorts를 제작할 일정을\n선택해주세요.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: AppColors.primaryGrey,
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Row(
                    children: [
                      Text(
                        '하마',
                        style: TextStyle(
                          color: AppColors.mainPurple,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '와 함께한 여행',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: AppColors.primaryGrey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          pinned: true, // Keep the header pinned at the top
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                if (index < allItinerary.length) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: RoundedContainer(
                      backgroundColor: AppColors.whiteGrey,
                      child: SelectItineraryListItem(
                        allItinerary: allItinerary[index],
                      ),
                    ),
                  );
                } else {
                  return SizedBox.shrink(); // Empty placeholder
                }
              },
              childCount: allItinerary.isEmpty ? 1 : allItinerary.length,
            ),
          ),
        ),
        if (allItinerary.isEmpty)
          SliverToBoxAdapter(
            child: RoundedContainer(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              borderColor: AppColors.mainPurple,
              radius: 10,
              borderWidth: 1,
              child: const NoItnieraryListWidget(),
            ).pSymmetric(v: 30),
          ),
      ],
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      height: 200, // Adjust the height as needed
      child: child,
    );
  }

  @override
  double get maxExtent => 200; // Adjust the height as needed

  @override
  double get minExtent => 200; // Adjust the height as needed

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
