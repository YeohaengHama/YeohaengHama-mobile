import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/area/saerch_image_result.dart';
import 'package:fast_app_base/data/entity/area/serch_detail_result.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../data/entity/diary/vo_find_account_diary.dart';


class DiaryImageScrollView extends StatefulWidget {
  const DiaryImageScrollView({
    Key? key,
    required this.pageController, required this.accountDiary,

  }) : super(key: key);

  final PageController pageController;
  final FindAccountDiary accountDiary;

  @override
  _DiaryImageScrollViewState createState() => _DiaryImageScrollViewState();
}

class _DiaryImageScrollViewState extends State<DiaryImageScrollView> {
  double _currentPage = 0;
  @override
  void initState() {
    super.initState();
    widget.pageController.addListener(() {
      setState(() {
        _currentPage = widget.pageController.page!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 360,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(0),
            child: PageView(
              controller: widget.pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page.toDouble();
                });
              },
              children: [
                ...widget.accountDiary.diaryPhotoUrls!.map((diaryPhotoUrls) {
                  String url = diaryPhotoUrls['photoURL']!;
                  if (url.isNotEmpty) {
                    return CachedNetworkImage(imageUrl: url, fit: BoxFit.fill);
                  } else {
                    return Container(
                      color: Colors.grey, // 원하는 배경색 지정
                    );
                  }
                }).toList(),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Text(
              '${_currentPage.toInt() + 1}/${widget.accountDiary.diaryPhotoUrls!.length}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(
              controller: widget.pageController,
              count: widget.accountDiary.diaryPhotoUrls!.length,
              effect: const SwapEffect(
                dotHeight: 10,
                dotWidth: 10,
                dotColor: Colors.white38,
                activeDotColor: Colors.white,
              ),
            ).pOnly(bottom: 10),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // 이미 dispose된 경우에만 dispose하도록 null 체크
    if (widget.pageController.hasClients) {
      widget.pageController.dispose();
    }
    super.dispose();
  }

}
