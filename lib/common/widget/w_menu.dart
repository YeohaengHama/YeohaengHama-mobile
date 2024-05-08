import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final String text;
  final double textSize;
  final Function() onTap;

  const MenuWidget(this.text, {Key? key, required this.onTap, this.textSize = 15}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Tap(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 20),
          child: Row(
            children: [
              Expanded(
                  child: text.text
                      .textStyle(defaultFontStyle()).bold
                      .color(AppColors.primaryGrey)
                      .size(textSize)
                      .make()),
              spacer,
              Arrow(direction: AxisDirection.right,size: textSize)
            ],

          ),
        ),
      ),
    );
  }
}