import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/area/search_simple_toursim_result.dart';
import 'package:flutter/material.dart';

import '../../../../../../../data/entity/bot/chat_bot.dart';
import '../../../../../post_detail/s_post_detail.dart';

class RandomPlaceWidget extends StatelessWidget {
  final RandomPlace randomPlace;

  const RandomPlaceWidget({required this.randomPlace});

  @override
  Widget build(BuildContext context) {
    SearchSimpleTourismResult searchSimplePlace = SearchSimpleTourismResult(contentTypeId: randomPlace.playType, contentId: randomPlace.playNum, title: randomPlace.name, addr1: randomPlace.addr1, addr2: '', firstimage: randomPlace.image ?? '');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Center(
          child: Text(
            '이 장소는 어때요?',
            style:TextStyle(color: AppColors.secondGrey),
          ),
        ),
        Height(10),
        RoundedContainer(
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Tap(
            onTap: () { Nav.push(PostDetailScreen(searchSimpleResult: searchSimplePlace)); },
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child:  randomPlace.image != null ?  Image.network(
                        randomPlace.image!,
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      ):Image.asset(
                        'assets/image/icon/colorHama.png',
                        width: 150,
                        height: 150,
                        fit: BoxFit.cover,
                      )),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          randomPlace.name!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          randomPlace.addr1,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        )
                      ],
                    ).pSymmetric(v: 5, h: 10),
                  ),

                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}
