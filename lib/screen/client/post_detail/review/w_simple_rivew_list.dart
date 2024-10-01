import 'package:cached_network_image/cached_network_image.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/post_detail/review/s_web_view.dart';
import 'package:fast_app_base/screen/client/post_detail/review/w_star.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../data/entity/review/a_review_show_all.dart';

class SimpleReviewList extends ConsumerWidget {
  const SimpleReviewList(this.review, {Key? super.key});
  final ReviewShowAll review;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String overviewText = review.content;
    if (overviewText.length > 80) {
      overviewText = '${overviewText.substring(0, 80)}...더보기';
    }

    List<Widget> imageWidgets = [];

    if (review.reviewPhotoURLList != null) {
      if (review.reviewPhotoURLList!.length == 1) {
        imageWidgets.add(
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: CachedNetworkImage(
                  imageUrl: review.reviewPhotoURLList![0],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        );
      } else if (review.reviewPhotoURLList!.length == 2) {
        imageWidgets.addAll([
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: CachedNetworkImage(
                  imageUrl: review.reviewPhotoURLList![0],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: CachedNetworkImage(
                  imageUrl: review.reviewPhotoURLList![1],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ]);
      } else if (review.reviewPhotoURLList!.length == 3) {
        imageWidgets.addAll([
          Expanded(
            flex: 2,
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: CachedNetworkImage(
                  imageUrl: review.reviewPhotoURLList![0],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: CachedNetworkImage(
                        imageUrl: review.reviewPhotoURLList![1],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: CachedNetworkImage(
                        imageUrl: review.reviewPhotoURLList![2],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]);
      } else if (review.reviewPhotoURLList!.length == 4) {
        imageWidgets.addAll([
          Expanded(
            flex: 2,
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: CachedNetworkImage(
                  imageUrl: review.reviewPhotoURLList![0],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: CachedNetworkImage(
                        imageUrl: review.reviewPhotoURLList![1],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: CachedNetworkImage(
                        imageUrl: review.reviewPhotoURLList![2],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                const SizedBox(height: 5),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: CachedNetworkImage(
                        imageUrl: review.reviewPhotoURLList![3],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]);
      } else if (review.reviewPhotoURLList!.length >= 5) {
        imageWidgets.addAll([
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: CachedNetworkImage(
                              imageUrl: review.reviewPhotoURLList![0],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: CachedNetworkImage(
                              imageUrl: review.reviewPhotoURLList![1],
                              fit: BoxFit.cover,
                            ),
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
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: CachedNetworkImage(
                              imageUrl: review.reviewPhotoURLList![2],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: CachedNetworkImage(
                              imageUrl: review.reviewPhotoURLList![3],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            AspectRatio(
                              aspectRatio: 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: CachedNetworkImage(
                                  imageUrl: review.reviewPhotoURLList![4],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Container(
                                    padding: EdgeInsets.all(5),
                                    color: Colors.black.withOpacity(0.5),
                                    child: Text(
                                      '+${review.reviewPhotoURLList!.length - 5}',
                                      style: TextStyle(color: Colors.white),
                                    ),
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
    }
    // 이미지 개수에 따라 이미지를 동적으로 생성

    return Tap(
      onTap: () {
        if (review.blogURL != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebViewScreen(url: review.blogURL!),
            ),
          );
        } },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: review.account.photoUrl != null
                    ? CachedNetworkImage(
                        imageUrl: review.account.photoUrl!,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        '$basePath/icon/colorHama.png',
                        width: 40,
                        height: 40,
                      ),
              ),
              review.account.nickname.text
                  .color(AppColors.primaryGrey)
                  .bold
                  .size(13)
                  .make()
                  .pOnly(left: 10),
            ],
          ),
          const SizedBox(height: 10),
          if(review.reviewPhotoURLList != null)...{StarRatingWidget(
              score: review.rating != null ? review.rating!.toDouble() : 0),
            const SizedBox(height: 10),},

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
          if (review.reviewPhotoURLList != null) ...{
            Container(
              width: maxWidthSize,
              height: 250,
              child: Row(
                children: imageWidgets,
              ),
            ),
          },
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
              // '${review.wirteTime.formattedDateTime}'
              //     .text
              //     .color(AppColors.thirdGrey)
              //     .make(),
            ],
          )
        ],
      ),
    );
  }
}
