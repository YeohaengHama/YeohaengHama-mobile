import 'package:card_loading/card_loading.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/home/w/w_random_area.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../data/memory/search/p_search_random_area.dart';
import '../../../search/provider/is_loading_provider.dart';

class RandomAreaHolder extends ConsumerStatefulWidget {
  const RandomAreaHolder({
    super.key,
    required this.areaSize,
  });

  final double areaSize;

  @override
  ConsumerState<RandomAreaHolder> createState() => _RandomAreaHolderState();
}

class _RandomAreaHolderState extends ConsumerState<RandomAreaHolder> {
  @override
  Widget build(BuildContext context) {
    final randomAreaList = ref.watch(randomAreaApiResponseProvider.notifier).state;
    final isLoading = ref.watch(isLoadingProvider.notifier).state;

    if (isLoading) {
      return SizedBox(
        width: double.infinity,
        height: widget.areaSize * 2 + 40, // Adjust height if needed
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
                children: List.generate(5, (index) {
                  final itemIndex = index * 2; // 0, 2, 4, 6, 8
                  return CardLoading(
                    height: widget.areaSize,
                    width: widget.areaSize,
                    borderRadius: BorderRadius.circular(10),
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  );
                }),
              ),
              Row(
                children: List.generate(5, (index) {
                  final itemIndex = index * 2 + 1; // 1, 3, 5, 7, 9
                  return CardLoading(
                    height: widget.areaSize,
                    width: widget.areaSize,
                    borderRadius: BorderRadius.circular(10),
                    margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  );
                }),
              ),
            ],
          ),
        ),
      );
    } else {
      return SizedBox(
        width: double.infinity,
        height: widget.areaSize * 2 + 40, // Adjust height if needed
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Row(
                children: List.generate(5, (index) {
                  final itemIndex = index * 2; // 0, 2, 4, 6, 8

                  if (itemIndex < randomAreaList.length) {
                    return SizedBox(
                      width: widget.areaSize,
                      height: widget.areaSize,
                      child: RandomAreaWidget(
                        randomAreaList[itemIndex],
                        indexInList: itemIndex + 1,
                      ),
                    ).p(5);
                  } else {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        color: AppColors.whiteGrey,
                        width: widget.areaSize,
                        height: widget.areaSize,
                      ),
                    ).p(5);
                  }
                }),
              ),
              Row(
                children: List.generate(5, (index) {
                  final itemIndex = index * 2 + 1; // 1, 3, 5, 7, 9

                  if (itemIndex < randomAreaList.length) {
                    return SizedBox(
                      width: widget.areaSize,
                      height: widget.areaSize,
                      child: RandomAreaWidget(
                        randomAreaList[itemIndex],
                        indexInList: itemIndex + 1,
                      ),
                    ).p(5);
                  } else {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Container(
                        color: AppColors.whiteGrey,
                        width: widget.areaSize,
                        height: widget.areaSize,
                      ),
                    ).p(5);
                  }
                }),
              ),
            ],
          ),
        ),
      );
    }
  }
}
