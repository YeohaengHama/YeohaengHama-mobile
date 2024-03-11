import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/data/entity/area/saerch_image_result.dart';
import 'package:fast_app_base/data/entity/area/serch_detail_result.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../common/common.dart';
import '../../entity/area/vo_tourism.dart';

class ImageScrollView extends StatefulWidget {
  const ImageScrollView({
    super.key,
    required this.pageController, required this.searchImageResult,

  });

  final PageController pageController;

  final SearchImageResult searchImageResult;

  @override
  State<ImageScrollView> createState() => _ImageScrollViewState();
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
                ...widget.searchImageResult.imagesUrl!.map(
                      (url) => CachedNetworkImage(imageUrl: url, fit: BoxFit.fill,),
                ).toList(),
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
                dotColor: Colors.white,
                activeDotColor: Colors.white38,
              ),
            ).pOnly(bottom: 10),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // ImageScrollView가 dispose 될 때 pageController도 함께 dispose
    widget.pageController.dispose();
    super.dispose();
  }
}
