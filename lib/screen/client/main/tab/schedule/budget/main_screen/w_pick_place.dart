import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../data/entity/itinerary/a_add_pick_place.dart';
import '../../../../../../../data/memory/budget/add_budget_provider.dart';


class PickPlaceWidget extends ConsumerWidget {
  const PickPlaceWidget(this.addPickPlace, {super.key});

  final AddPickPlace addPickPlace;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addBudget = ref.read(addBudgetProvider.notifier);

    void updateAddBudgetPlace() {
      addBudget.setPlace(addPickPlace.placeId!);
      addBudget.setPlaceName(addPickPlace.placeName!);
      Nav.pop(context);
    }

    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            '${addPickPlace.placeName}'.text.size(16).color(AppColors.primaryGrey).bold.make(),
            '${addPickPlace.addr1}'.text.color(AppColors.secondGrey).size(14).make()
          ],
        ),
        spacer,
        RoundButton(text: '선택',width:35,height:40,fontSize: 14,textColor: AppColors.primaryGrey, onTap: updateAddBudgetPlace, bgColor: AppColors.outline,)
      ],
    ).pSymmetric(h: 20,v: 10);
  }
}
