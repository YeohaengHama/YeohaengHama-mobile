import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/data/entity/area/saerch_image_result.dart';
import 'package:fast_app_base/data/entity/area/serch_detail_result.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../common/common.dart';
import '../../entity/area/vo_tourism.dart';

class ImageScrollView extends StatefulWidget {
  const ImageScrollView({
    Key? key,
    required this.pageController,
    required this.searchImageResult,
  }) : super(key: key);

  final PageController pageController;
  final SearchImageResult searchImageResult;

  @override
  _ImageScrollViewState createState() => _ImageScrollViewState();
}

class _ImageScrollViewState extends State<ImageScrollView> {
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
              children: [
                ...widget.searchImageResult.imagesUrl!.map((url) {
                  if (url.isNotEmpty) {
                    return CachedNetworkImage(imageUrl: url, fit: BoxFit.fill);
                  } else {
                    return Container(
                      color: Colors.white,
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        '$basePath/icon/hama.png',
                        width: 50,
                        height: 50,
                      ), // 배경색을 원하는 색상으로 지정
                    );
                  }
                }).toList(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(
              controller: widget.pageController,
              count: widget.searchImageResult.imagesUrl!.length,
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
