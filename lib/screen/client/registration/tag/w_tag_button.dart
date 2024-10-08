import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../common/common.dart';
import '../../../../data/memory/itinerary/Itinerary_provider.dart';


class TagButton extends ConsumerStatefulWidget {
  final Map<int, String>? whoTagMap;
  final Map<int, String>? styleTagMap;

  const TagButton({Key? super.key, this.whoTagMap, this.styleTagMap});

  @override
  ConsumerState<TagButton> createState() => _TagButtonState();
}

class _TagButtonState extends ConsumerState<TagButton> {
  List<int> selectedWhoTags = [];
  List<int> selectedStyleTags = [];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      runSpacing: 3,
      children: (widget.whoTagMap?.entries ?? []).map((entry) {
        final int key = entry.key;
        final String value = entry.value;
        bool isSelected = selectedWhoTags.contains(key);

        return ElevatedButton(
          onPressed: () {
            setState(() {
              if (isSelected) {
                selectedWhoTags.remove(key);
              } else {
                selectedWhoTags.add(key);
              }
              ref.read(itineraryProvider.notifier).updateWhoTags(
                selectedWhoTags.map((selectedKey) => widget.whoTagMap![selectedKey]!).toList(),
              );
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: isSelected ? AppColors.mainPurple : AppColors.whiteGrey,
            elevation: 0,
            foregroundColor: AppColors.mainPurple,
          ),
          child: Text(
            value,
            style: TextStyle(color: isSelected ? Colors.white : AppColors.forthGrey),
          ),
        );
      }).toList()
        ..addAll(
          (widget.styleTagMap?.entries ?? []).map((entry) {
            final int key = entry.key;
            final String value = entry.value;
            bool isSelected = selectedStyleTags.contains(key);

            return ElevatedButton(
              onPressed: () {
                setState(() {
                  if (isSelected) {
                    selectedStyleTags.remove(key);
                  } else {
                    selectedStyleTags.add(key);
                  }
                  ref.read(itineraryProvider.notifier).updateStyleTags(
                    selectedStyleTags.map((selectedKey) => widget.styleTagMap![selectedKey]!).toList(),
                  );
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isSelected ? AppColors.mainPurple : AppColors.whiteGrey,
                elevation: 0,
                foregroundColor: AppColors.mainPurple,
              ),
              child: Text(
                value,
                style: TextStyle(color: isSelected ? Colors.white : AppColors.forthGrey),
              ),
            );
          }),
        ),
    );
  }
}
