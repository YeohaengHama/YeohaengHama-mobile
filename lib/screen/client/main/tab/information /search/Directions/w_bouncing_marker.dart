import 'package:flutter/material.dart';

class BouncingMarker extends StatefulWidget {
  final Widget child;

  BouncingMarker({required this.child});

  @override
  _BouncingMarkerState createState() => _BouncingMarkerState();
}

class _BouncingMarkerState extends State<BouncingMarker> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // 애니메이션 컨트롤러 초기화
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    // 트윈 애니메이션 설정
    _animation = Tween<double>(begin: 0, end: 8).chain(CurveTween(curve: Curves.elasticOut)).animate(_controller);

    // 애니메이션 반복
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, -_animation.value),
          child: widget.child,
        );
      },
    );
  }
}
