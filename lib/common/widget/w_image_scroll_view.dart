import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageScrollViewWidget<T> extends StatefulWidget {
  const ImageScrollViewWidget({
    Key? key,
    required this.pageController,
    required this.page,
    this.height = 300,
    this.width = double.maxFinite,
  }) : super(key: key);

  final PageController pageController;
  final T page;
  final double height;
  final double width;

  @override
  _ImageScrollViewWidgetState createState() => _ImageScrollViewWidgetState();
}

class _ImageScrollViewWidgetState extends State<ImageScrollViewWidget> {
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
                ...widget.page.photos.map((url) {
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
              '${_currentPage.toInt() + 1}/${widget.page.photos!.length}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(
              controller: widget.pageController,
              count: widget.page.photos!.length,
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
