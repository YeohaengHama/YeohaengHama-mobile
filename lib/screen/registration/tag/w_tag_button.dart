import 'package:flutter/material.dart';
import '../../../common/constant/app_colors.dart';

class TagButton extends StatefulWidget {
  final List<String>? whoTag;
  final List<String>? styleTag;

  const TagButton({super.key,this.whoTag, this.styleTag});

  @override
  State<TagButton> createState() => _TagButtonState();
}

class _TagButtonState extends State<TagButton> {
  List<String> selectedWhoTags = [];
  List<String> selectedStyleTags = [];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 6,
      runSpacing: 3,
      children: (widget.whoTag ?? []).map((_tag) {
        bool isSelected = selectedWhoTags.contains(_tag);

        return ElevatedButton(
          onPressed: () {
            setState(() {
              if (isSelected) {
                selectedWhoTags.remove(_tag);
              } else {
                selectedWhoTags.add(_tag);
              }
            });
          },
          style: ElevatedButton.styleFrom(

            backgroundColor: isSelected ? AppColors.mainPurple : AppColors.whiteGrey,
            elevation: 0,
            foregroundColor: AppColors.mainPurple,

          ),
          child: Text(
            _tag,
            style: TextStyle(color: isSelected ? Colors.white : AppColors.forthGrey),
          ),
        );
      }).toList()
        ..addAll(
          (widget.styleTag ?? []).map((_tag) {
            bool isSelected = selectedStyleTags.contains(_tag);

            return ElevatedButton(
              onPressed: () {
                setState(() {
                  if (isSelected) {
                    selectedStyleTags.remove(_tag);
                  } else {
                    selectedStyleTags.add(_tag);
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: isSelected ? AppColors.mainPurple : AppColors.whiteGrey,
                elevation: 0,
                foregroundColor: AppColors.mainPurple,
              ),
              child: Text(
                _tag,
                style: TextStyle(color: isSelected ? Colors.white : AppColors.forthGrey),
              ),
            );
          }),
        ),
    );
  }
}
