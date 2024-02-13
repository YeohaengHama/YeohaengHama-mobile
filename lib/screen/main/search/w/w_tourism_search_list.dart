import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../../../../entity/area/vo_tourism.dart';

class TourismSearchListWidget extends StatelessWidget {
  const TourismSearchListWidget(this.tourism, {super.key});
  final Tourism tourism;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: tourism.tourismImages[0],
            width: 45,
            height: 45,
            fit: BoxFit.cover,
          ),
          width10
          ,
          SizedBox(
            height: 45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                tourism.tourismName.text.bold.color(AppColors.primaryGrey).size(13).make().pOnly(top: 3),
                tourism.tourismArea.text.bold.color(AppColors.thirdGrey).size(9).make().pOnly(bottom: 3)
              ],
            ),
          )

        ],
      ).pOnly(top: 10,left: 20,bottom: 10),
    );
  }
}
