import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets? margin;
  final double radius;
  final Color? backgroundColor;
  final Color? borderColor;
  final double borderWidth;


  const RoundedContainer(
      {required this.child,
      super.key,
      this.radius = 10,
      this.backgroundColor,
      this.margin,
      this.borderColor,
      this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      this.borderWidth= 1.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.mainPurple,
          border: borderColor != null
              ? Border.all(color: borderColor!, width:borderWidth) // 테두리 굵기 설정
              : null,
          borderRadius: BorderRadius.circular(radius)),
      child: child,
    );
  }
}
