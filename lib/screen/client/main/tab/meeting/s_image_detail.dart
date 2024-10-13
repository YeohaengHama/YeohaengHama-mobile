import 'package:fast_app_base/common/dart/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

class ImageDetailScreen extends StatelessWidget {
  final String imageUrl;
  final String sender;
  const ImageDetailScreen({Key? key, required this.sender, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(

        title: Text('$sender',style: TextStyle(color: Colors.white, fontSize: 16),),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(Icons.file_download_rounded, ),
            onPressed: () {
              // 이미지 저장 기능 호출
              _saveImage(imageUrl);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('이미지를 저장했습니다.')),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pop(); // 터치 시 닫기
          },
          child: Image.network(imageUrl, fit: BoxFit.contain),
        ),
      ),
    );
  }

  Future<void> _saveImage(String imageUrl) async {
    final result = await ImageGallerySaver.saveImage(
      (await NetworkAssetBundle(Uri.parse(imageUrl)).load(imageUrl)).buffer.asUint8List(),
      quality: 100,
      name: "chat_image_${DateTime.now().millisecondsSinceEpoch}.jpg",
    );
    print("Image saved: $result");
  }
}
