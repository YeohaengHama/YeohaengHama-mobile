import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_height_and_width.dart';
import 'package:fast_app_base/entity/area/vo_area.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/main/search/s_space_search.dart';
import 'package:flutter/material.dart';

class AreasWidget extends StatelessWidget {
  const AreasWidget(this.area, {super.key,});
  final HamaArea area;

  @override
  Widget build(BuildContext context) {
    return Container(
          child: Row(
          children: [
            CachedNetworkImage(
            imageUrl: area.areaImages,
            width: 45,
            height: 45,
            fit: BoxFit.cover,
          ),
          width10
          ,
            SizedBox(
              height: 45,
              width: 250, // 적절한 폭으로 제약을 설정
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  area.area.text.bold.color(AppColors.primaryGrey).size(13).make().pOnly(top: 3),
                  area.area.text.bold.color(AppColors.thirdGrey).size(9).make().pOnly(bottom: 3),
                ],
              ),
            ),
            // 빈 컨테이너는 확장할 필요 없이 적절한 제약을 설정
            RoundButton(text: '선택', onTap: (){Nav.push(SpaceSearchFragment());},bgColor: AppColors.outline,textColor: AppColors.primaryGrey,fontWeight: FontWeight.bold,fontSize: 12,height: 28,),

          ],
          ).pOnly(top: 10,left: 20,bottom: 10),
          );

  }
}
