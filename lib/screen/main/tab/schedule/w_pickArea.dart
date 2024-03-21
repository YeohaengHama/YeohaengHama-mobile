import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import '../../../../data/entity/itinerary/vo_pick_place.dart';


class PickAreaWidget extends StatelessWidget {
  const PickAreaWidget( this.pickPlace, {Key? key})
      : super(key: key);
  final PickPlace pickPlace;


  @override
  Widget build(BuildContext context) {

    return Container(
      width: 105,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: CachedNetworkImage(
              imageUrl: pickPlace.firstImage,
              width: 105,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pickPlace.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
                Text(
                  pickPlace.addr1,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                )
              ],
            ).pSymmetric(v: 5, h: 10),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.remove_circle,color: AppColors.forthGrey,size: 20,).pOnly(right: 2),
          )
        ],
      ),
    ).pOnly(left: 5);
  }
}
