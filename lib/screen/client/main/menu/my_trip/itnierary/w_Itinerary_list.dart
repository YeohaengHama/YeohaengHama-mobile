import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/menu/all_itinerary.dart';
import 'package:fast_app_base/data/network/itinerary_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';

class ItineraryList extends ConsumerStatefulWidget {
  const ItineraryList({Key? key, required this.allItinerary}) : super(key: key);
  final AllItinerary allItinerary;

  @override
  _ItineraryListState createState() => _ItineraryListState();
}

class _ItineraryListState extends ConsumerState<ItineraryList> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  bool _showIcons = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(10.0, 0.0), // 시작 지점을 위로 변경
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    )..addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        setState(() {
          _showIcons = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final ItineraryApi = ref.watch(itineraryApiProvider);
    return MouseRegion(
      onEnter: (_) {
        if (!_showIcons) _toggleIcons(true);
      },
      onExit: (_) {
        if (_showIcons) _toggleIcons(false);
      },
      child: Tap(
        onTap: () {
          ItineraryApi.getItinerary(ref, widget.allItinerary.id.toString());
          // ItineraryApi.PostAddNewEachPickPlace(ref);
          Nav.pop(context);
        },
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                '$basePath/icon/colorHama.png',
                width: 60,
                height: 60,
              ),
            ).pOnly(right: 5),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  '${widget.allItinerary.name}'.text.bold.color(AppColors.primaryGrey).make(),
                  '${widget.allItinerary.startDate}'.text.color(AppColors.secondGrey).make(),
                ],
              ),
            ),
            SizedBox( // 아이콘이 표시되는 영역을 위로 이동
              height: 60,
              child: SlideTransition(
                position: _offsetAnimation,
                child: Row(
                  children: [
                    if (_showIcons || _controller.isAnimating)
                      IconButton(
                        onPressed: () {
                          _toggleIcons(!_showIcons);
                          // 수정 기능 실행
                        },
                        icon: Icon(Icons.edit),
                      ),
                    if (_showIcons || _controller.isAnimating)
                      IconButton(
                        onPressed: () {
                          ItineraryApi.DeleteItinerary(widget.allItinerary.id, ref);
                          _toggleIcons(!_showIcons);
                          // 삭제 기능 실행
                        },
                        icon: Icon(Icons.delete),
                      ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () => _toggleIcons(!_showIcons),

              icon: Icon(_showIcons ? Icons.close : Icons.more_horiz),
            ),
          ],
        ),
      ),
    );
  }

  void _toggleIcons(bool show) {
    setState(() {
      _showIcons = show;
      if (_showIcons) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
