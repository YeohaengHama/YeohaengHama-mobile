import 'package:card_loading/card_loading.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/search/provider/bottom_nav_black.dart';
import 'package:fast_app_base/screen/client/main/search/provider/is_loading_provider.dart';
import 'package:fast_app_base/screen/client/main/search/provider/is_playing_shots.dart';
import 'package:fast_app_base/screen/client/main/search/s_video_swipe.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'dart:typed_data';

import '../../../../data/memory/shorts/p_shorts_search.dart';

class ShortsSearchListFragment extends ConsumerWidget {
  const ShortsSearchListFragment({
    super.key,
  });

  Future<List<Uint8List?>> _generateThumbnails(List<String> videoUrls) async {
    final futures = videoUrls.map((url) => VideoThumbnail.thumbnailData(
      video: url,
      imageFormat: ImageFormat.PNG,
      maxWidth: 128, // 썸네일 너비
      quality: 75,
    )).toList();
    return Future.wait(futures);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shortsList = ref.watch(shortsSearchProvider);
    final _isLoading = ref.watch(isLoadingProvider.notifier).state;
    final isBlack = ref.read(BottomNavBlackProvider.notifier);

    // 비디오 URL 리스트 생성
    final videoUrls = shortsList.shortsList.map((short) => short.videoUrl).toList();

    return shortsList.shortsList.isEmpty || _isLoading ?
    SizedBox(
        child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                '해당 키워드의 숏츠가 없어요'.text.color(AppColors.thirdGrey).bold.make(),
                '다시 검색해 볼까요?'.text.color(AppColors.thirdGrey).make(),
                Height(30),
                Line(color: AppColors.outline,width: 340)
              ],
            ))).pSymmetric(v: 30)
        : Expanded(
      child: _isLoading
          ? GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          childAspectRatio: 0.5625,
        ),
        itemCount: 12,
        itemBuilder: (context, index) {
          return CardLoading(
            height: 200,
            width: double.infinity,
            borderRadius: BorderRadius.circular(5),
            margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
          );
        },
      )
          : FutureBuilder<List<Uint8List?>>(
        future: _generateThumbnails(videoUrls), // 모든 썸네일 생성
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                childAspectRatio: 0.5625,
              ),
              itemCount: shortsList.shortsList.length,
              itemBuilder: (context, index) {
                return CardLoading(
                  height: 200,
                  width: double.infinity,
                  borderRadius: BorderRadius.circular(5),
                  margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
                ); // 로딩 표시
              },
            );
          } else if (snapshot.hasError || !snapshot.hasData) {
            return Center(child: Icon(Icons.error)); // 에러 처리
          } else {
            final thumbnails = snapshot.data!;

            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0,
                childAspectRatio: 0.5625,
              ),
              itemCount: thumbnails.length,
              itemBuilder: (context, index) {
                final short = shortsList.shortsList[index];
                return GestureDetector(
                  onTap: () {
                    isBlack.setBlack(true);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              VideoSwipeScreen(initialIndex: index)),
                    );
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.memory(
                        thumbnails[index]!, // 썸네일 이미지
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
