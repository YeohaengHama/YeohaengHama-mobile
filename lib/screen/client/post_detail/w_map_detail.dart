import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_tap.dart';
import 'package:fast_app_base/screen/client/post_detail/review/w_review_star.dart';
import 'package:fast_app_base/screen/client/post_detail/w_map.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import '../../../data/entity/area/saerch_image_result.dart';
import '../../../data/entity/area/serch_detail_result.dart';
import '../../../data/entity/review/a_review_show_all.dart';
import '../../../entity/dummies.dart';


class MapDetailScreen extends StatefulWidget {
  const MapDetailScreen( {Key? key, required this.searchDetailResult ,required this.searchImageResult, required this.searchReviewResult, }) : super(key: key);
  final SearchDetailResult searchDetailResult;
  final SearchImageResult searchImageResult;
  final List<ReviewShowAll> searchReviewResult;

  @override
  State<MapDetailScreen> createState() => _MapDetailScreenState();
}

class _MapDetailScreenState extends State<MapDetailScreen> {
  @override
  Widget build(BuildContext context) {
    String overviewText = widget.searchDetailResult.overView;
    if (overviewText.length > 20) {
      overviewText = overviewText.substring(0, 45) + '...';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.searchDetailResult.title}'), // App Bar에 제목 추가
        // 다른 액션 버튼도 필요하다면 actions 속성을 사용하세요.
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert), // 예시: 세로 점선 아이콘
            onPressed: () {
              // 버튼이 눌렸을 때의 동작 정의
            },
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            MapWidget(
              mapX: double.parse(widget.searchDetailResult.mapX),
              mapY: double.parse(widget.searchDetailResult.mapY),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Tap(
                onTap: () { Nav.pop(context); },
                child: SizedBox(
                  width: maxWidthSize,
                  height: 150,
                  child: RoundedContainer(
                    borderColor: Colors.white,
                    backgroundColor: Colors.white,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(5), // 테두리를 둥글게 처리
                          child: widget.searchImageResult.imagesUrl != null ? CachedNetworkImage(
                            imageUrl: widget.searchImageResult.imagesUrl!.first,
                            width: 100, // 이미지의 너비
                            height: 120, // 이미지의 높이
                            fit: BoxFit.cover, // 이미지를 적절히 자르고 크기를 맞춤
                          ): Image.asset('$basePath/icon/colorHama.png', width: 100,height: 120, fit: BoxFit.cover),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            widget.searchDetailResult.title.text.bold.color(AppColors.primaryGrey).make(),
                            SizedBox(width: 240,child: overviewText.text.maxLines(2).color(AppColors.secondGrey).make()),
                            widget.searchDetailResult.addr1.text.color(AppColors.thirdGrey).make(),
                            ReviewStar(),
  
                          ],
                        ).pOnly(left: 10)
                      ],
                    ),

                  ),
                ),
              ),
            ).pSymmetric(h: 10, v: 30)
          ]
        ),
      ),
    );
  }
}
