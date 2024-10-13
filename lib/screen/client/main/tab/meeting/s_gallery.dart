import 'package:fast_app_base/screen/client/main/tab/meeting/s_image_detail.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:nav_hooks/nav.dart';

class GalleryScreen extends StatelessWidget {
  final List<Map<String, String>> chatLog; // 전체 메시지 로그를 받아옴

  const GalleryScreen({Key? key, required this.chatLog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // chatLog에서 Type이 IMAGE인 메시지만 필터링
    final List<String> imageUrls = chatLog
        .where((message) => message['type'] == 'IMAGE')
        .map((message) => message['message']!)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery"),
        backgroundColor: Colors.white.withOpacity(0.1),
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: imageUrls.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 한 줄에 3개의 이미지
            crossAxisSpacing: 8.0, // 이미지 간 간격
            mainAxisSpacing: 8.0, // 이미지 위아래 간격
          ),
          itemBuilder: (context, index) {
            final imageUrl = imageUrls[index];
            return GestureDetector(
              onTap: () {
                Nav.push(ImageDetailScreen(sender: '', imageUrl: imageUrl));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover, // 이미지를 꽉 채움
                  // placeholder: (context, url) => CircularProgressIndicator(), // 로딩 중일 때 인디케이터를 제거
                  errorWidget: (context, url, error) => Center(child: Text('이미지를 불러오는 데 실패했습니다.')),
                  // 이미지를 직접적으로 보여주고, 오류 발생 시 텍스트만 보여줌
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
