import 'package:flutter/material.dart';
import 'transparent_scaffold.dart';
class BottomDialogScaffold extends StatelessWidget {
  final Widget body;

  const BottomDialogScaffold({required this.body});

  @override
  Widget build(BuildContext context) {
    return TransparentScaffold(
      backgroundColor: Colors.transparent, // TransparentScaffold의 배경색을 투명하게 설정
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Colors.transparent,
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.only(top: 20, bottom: 20, right: 15, left: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15), topRight: Radius.circular(15)
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    body,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
