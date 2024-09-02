import 'package:flutter/material.dart';

class ScrollHolder extends StatelessWidget {
  const ScrollHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 5,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
