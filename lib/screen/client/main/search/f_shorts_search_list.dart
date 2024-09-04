import 'package:card_loading/card_loading.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/search/provider/bottom_nav_black.dart';
import 'package:fast_app_base/screen/client/main/search/provider/is_loading_provider.dart';
import 'package:fast_app_base/screen/client/main/search/s_video_swipe.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../data/memory/shorts/p_shorts_search.dart';

class ShortsSearchListFragment extends ConsumerWidget {
  const ShortsSearchListFragment({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shortsList = ref.watch(shortsSearchProvider);
    final _isLoading = ref.watch(isLoadingProvider.notifier).state;
    final isBlack = ref.read(BottomNavBlackProvider.notifier);
    if (shortsList.shortsList.isEmpty && _isLoading) {
      return Expanded(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,      // 가로에 3개의 항목 배치
            crossAxisSpacing: 4.0,   // 항목 사이의 가로 간격
            mainAxisSpacing: 4.0,    // 항목 사이의 세로 간격
            childAspectRatio: 0.5625, // 9:16 비율 (9/16 = 0.5625)
          ),
          itemCount: 9, // 로딩 중 표시할 항목 개수
          itemBuilder: (context, index) {
            return CardLoading(
              height: 200, // 이미지 높이에 맞게 설정 (childAspectRatio와 일치)
              width: double.infinity, // 가로 폭을 전체로 설정
              borderRadius: BorderRadius.circular(5),
              margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0), // GridView의 간격에 맞게 설정
            );
          },
        ),
      );
    }

    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,      // 가로에 3개의 항목 배치
          crossAxisSpacing: 4.0,   // 항목 사이의 가로 간격
          mainAxisSpacing: 4.0,    // 항목 사이의 세로 간격
          childAspectRatio: 0.5625, // 9:16 비율 (9/16 = 0.5625)
        ),
        itemCount: shortsList.shortsList.length,
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
                child: Image.network(
                  short.videoUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
