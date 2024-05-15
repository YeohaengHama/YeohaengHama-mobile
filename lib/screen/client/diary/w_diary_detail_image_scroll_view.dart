import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../data/entity/diary/vo_detail_diary.dart';

class DiaryRiviewImagesScrollWidget<T> extends StatefulWidget {
  const DiaryRiviewImagesScrollWidget({
    Key? key,
    required this.pageController,
    required this.review,
    this.height = 300,
    this.width = double.maxFinite,
  }) : super(key: key);

  final PageController pageController;
  final Review? review;
  final double height;
  final double width;

  @override
  _DiaryRiviewImagesScrollWidgetState createState() => _DiaryRiviewImagesScrollWidgetState();
}

class _DiaryRiviewImagesScrollWidgetState extends State<DiaryRiviewImagesScrollWidget> {
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
      height: widget.height,
      width: widget.width,
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
                ...widget.review!.reviewPhotoURLList!.map((url) {
                  if (url.isNotEmpty) {
                    return CachedNetworkImage(imageUrl: url, fit: BoxFit.cover);
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
            right: 15,
            child: Text(
              '${_currentPage.toInt() + 1}/${widget.review!.reviewPhotoURLList!.length}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
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
