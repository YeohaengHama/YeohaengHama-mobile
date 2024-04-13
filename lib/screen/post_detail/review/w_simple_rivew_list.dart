import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/screen/post_detail/review/w_star.dart';
import 'package:flutter/material.dart';

import '../../../entity/area/vo_review.dart';
import '../../../entity/dummies.dart';

class SimpleReviewList extends StatelessWidget {
  const SimpleReviewList(this.review, {Key? key}) : super(key: key);
  final Review review;

  @override
  Widget build(BuildContext context) {
    String overviewText = review.contents;
    if (overviewText.length > 80) {
      overviewText = overviewText.substring(0, 80) + '...더보기';
    }

    List<Widget> imageWidgets = [];

    // 이미지 개수에 따라 이미지를 동적으로 생성
    if (review.Images!.length == 1) {
      imageWidgets.add(
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: CachedNetworkImage(
              imageUrl: review.Images![0],
              fit: BoxFit.cover,
            ),
          ),
        ),
      );
    } else if (review.Images!.length == 2) {
      imageWidgets.addAll([
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: CachedNetworkImage(
              imageUrl: review.Images![0],
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: CachedNetworkImage(
              imageUrl: review.Images![1],
              fit: BoxFit.cover,
            ),
          ),
        ),
      ]);
    } else if (review.Images!.length == 3) {
      imageWidgets.addAll([
        Expanded(
          flex: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: CachedNetworkImage(
              imageUrl: review.Images![0],
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 5),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: CachedNetworkImage(
                    imageUrl: review.Images![1],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: CachedNetworkImage(
                    imageUrl: review.Images![2],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]);
    } else if (review.Images!.length == 4) {
      imageWidgets.addAll([
        Expanded(
          flex: 2,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: CachedNetworkImage(
              imageUrl: review.Images![0],
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: CachedNetworkImage(
                    imageUrl: review.Images![1],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: CachedNetworkImage(
                    imageUrl: review.Images![2],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 5),
              const SizedBox(height: 5),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: CachedNetworkImage(
                    imageUrl: review.Images![3],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ]);
    } else if (review.Images!.length >= 5) {
      imageWidgets.addAll([
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: CachedNetworkImage(
                          imageUrl: review.Images![0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: CachedNetworkImage(
                          imageUrl: review.Images![1],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: CachedNetworkImage(
                          imageUrl: review.Images![2],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: CachedNetworkImage(
                          imageUrl: review.Images![3],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: CachedNetworkImage(
                              imageUrl: review.Images![4],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: ClipRRect(
                              borderRadius:  BorderRadius.circular(5),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                color: Colors.black.withOpacity(0.5),
                                child: Text(
                                  '+${review.Images!.length - 5}',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]);
    }


    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: CachedNetworkImage(
                imageUrl: review.user.profileUrl ?? '',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            review.user.nickname.text
                .color(AppColors.primaryGrey)
                .bold
                .size(13)
                .make()
                .pOnly(left: 10),
          ],
        ),
        const SizedBox(height: 10),
        StarRatingWidget(score: review.score),
        const SizedBox(height: 10),
        SizedBox(
          width: 370,
          child: Text(
            overviewText,
            style: TextStyle(
              fontSize: 15,
              color: AppColors.primaryGrey,
            ),
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: maxWidthSize,
          height: 250,
          child: Row(
            children: imageWidgets,
          ),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.thumb_up_alt_outlined,
                  color: AppColors.thirdGrey,
                )),
            '1'.text.color(AppColors.thirdGrey).make(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.chat_outlined,
                  color: AppColors.thirdGrey,
                )),
            '0'.text.color(AppColors.thirdGrey).make(),
            spacer,
            '${review.wirteTime.formattedDateTime}'
                .text
                .color(AppColors.thirdGrey)
                .make(),
          ],
        )
      ],
    );
  }
}
