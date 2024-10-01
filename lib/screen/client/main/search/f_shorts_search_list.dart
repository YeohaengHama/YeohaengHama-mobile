import 'package:card_loading/card_loading.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/search/provider/bottom_nav_black.dart';
import 'package:fast_app_base/screen/client/main/search/provider/is_loading_provider.dart';
import 'package:fast_app_base/screen/client/main/search/s_video_swipe.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import 'dart:typed_data';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import '../../../../data/memory/shorts/p_shorts_search.dart';

class ShortsSearchListFragment extends ConsumerWidget {
  const ShortsSearchListFragment({
    super.key,
  });

  // 썸네일을 캐시에서 가져오는 함수
  Future<Uint8List?> _getCachedThumbnail(String videoUrl) async {
    final cacheManager = DefaultCacheManager();
    final fileInfo = await cacheManager.getFileFromCache(videoUrl);

    if (fileInfo != null) {
      return fileInfo.file.readAsBytes();
    } else {
      // 캐시에 없으면 새로 생성 후 캐시 저장
      final thumbnail = await VideoThumbnail.thumbnailData(
        video: videoUrl,
        imageFormat: ImageFormat.PNG,
        maxWidth: 128,
        quality: 75,
      );
      if (thumbnail != null) {
        await cacheManager.putFile(videoUrl, thumbnail);
      }
      return thumbnail;
    }
  }

  // 모든 썸네일을 비동기로 로드
  Future<List<Uint8List?>> _generateThumbnails(List<String> videoUrls) async {
    final futures = videoUrls.map((url) => _getCachedThumbnail(url)).toList();
    return Future.wait(futures);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shortsList = ref.watch(shortsSearchProvider);
    final isLoading = ref.watch(isLoadingProvider.notifier).state;
    final isBlack = ref.read(BottomNavBlackProvider.notifier);

    // 비디오 URL 리스트 생성
    final videoUrls = shortsList.shortsList.map((short) => short.videoUrl).toList();

    return shortsList.shortsList.isEmpty || isLoading
        ? SizedBox(
        child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                '해당 키워드의 숏츠가 없어요'.text.color(AppColors.thirdGrey).bold.make(),
                '다시 검색해 볼까요?'.text.color(AppColors.thirdGrey).make(),
                const Height(30),
                const Line(color: AppColors.outline, width: 340)
              ],
            ))).pSymmetric(v: 30)
        : Expanded(
        child: isLoading
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
    margin:
    EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
    );
    },
        )
            : FutureBuilder<List<Uint8List?>>(
          future: _generateThumbnails(videoUrls), // 모든 썸네일 생성
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return GridView.builder(
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
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
                    margin: EdgeInsets.symmetric(
                        horizontal: 4.0, vertical: 4.0),
                  ); // 로딩 표시
                },
              );
            } else if (snapshot.hasError || !snapshot.hasData) {
              return Center(child: Icon(Icons.error)); // 에러 처리
            } else {
              final thumbnails = snapshot.data!;

              return GridView.builder(
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
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
                            builder: (context) => VideoSwipeScreen(
                                initialIndex: index)),
                      );
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: thumbnails[index] != null
                            ? Image.memory(
                          thumbnails[index]!,
                          fit: BoxFit.cover,
                        )
                            : Icon(Icons.broken_image), // 썸네일 없는 경우 처리
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
