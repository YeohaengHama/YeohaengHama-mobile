import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/menu/all_itinerary.dart';
import 'package:fast_app_base/data/network/itinerary_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../common/dart/extension/datetime_extension.dart';
import '../../../../../../data/memory/itinerary/show_save_place_provider.dart';

class ItineraryList extends ConsumerStatefulWidget {
  const ItineraryList({Key? super.key, required this.allItinerary});
  final AllItinerary allItinerary;

  @override
  _ItineraryListState createState() => _ItineraryListState();
}

class _ItineraryListState extends ConsumerState<ItineraryList> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  bool _showIcons = false;
  final Map<String, String> areaImageMap = {
    '서울': 'assets/image/area/seoul.png',
    '인천': 'assets/image/area/incheon.jpg',
    '경기': 'assets/image/area/gyeonggi.jpg',
    '경남': 'assets/image/area/gyeongsangnam.jpg',
    '경주': 'assets/image/area/gyeongju.jpeg',
    '대전': 'assets/image/area/daejeon.jpeg',
    '부산': 'assets/image/area/busan.jpeg',
    '대구': 'assets/image/area/daegu.jpeg',
    '광주': 'assets/image/area/gwangju.jpeg',
    '울산': 'assets/image/area/ulsan.png',
    '강원': 'assets/image/area/gangwon.jpg',
    '충북': 'assets/image/area/chungbuk.jpg',
    '충남': 'assets/image/area/chungnam.jpg',
    '전북': 'assets/image/area/jeonbuk.jpg',
    '전남': 'assets/image/area/jeonnam.jpg',
    '제주': 'assets/image/area/jeju.png',
  };


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

    Future<void> getItinerary() async {
      await ItineraryApi.getItinerary(ref, widget.allItinerary.id.toString());

    }
    String areaImage = areaImageMap[widget.allItinerary.area] ?? '$basePath/icon/colorHama.png';

    return MouseRegion(
      onEnter: (_) {
        if (!_showIcons) _toggleIcons(true);
      },
      onExit: (_) {
        if (_showIcons) _toggleIcons(false);
      },
      child: Tap(
        onTap: () async {  ref
            .read(showPickPlaceApiResponseProvider.notifier).removeAllPlace();
          await getItinerary();

          await ItineraryApi.showSavePlace(ref);
          // ItineraryApi.PostAddNewEachPickPlace(ref);
          Nav.pop(context);
        },
        child: Row(
          children: [
            ClipOval(
              child: Image.asset(
                fit: BoxFit.fill,
                areaImage,  // 지역명에 맞는 이미지 경로를 사용
                width: 60,
                height: 60,
              ),
            ).pOnly(right: 5),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  '${widget.allItinerary.name}'.text.bold.color(AppColors.primaryGrey).make(),
                  Row(
                    children: [
                      formatDateRange(widget.allItinerary.startDate,widget.allItinerary.endDate).text.size(13).color(AppColors.secondGrey).make(),
                      if(widget.allItinerary.sharedAccount != 0) ', ${widget.allItinerary.sharedAccount}명과 함께'.text.size(13).color(AppColors.secondGrey).make()
                    ],
                  ),

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
                        onPressed: () async{
                          await ItineraryApi.DeleteItinerary(widget.allItinerary.id, ref);
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
        ).pSymmetric(h: 5),
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
