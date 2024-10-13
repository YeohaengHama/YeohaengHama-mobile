import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PickPhotoScreen extends StatefulWidget {
  const PickPhotoScreen({super.key});

  @override
  _PickPhotoScreenState createState() => _PickPhotoScreenState();
}

class _PickPhotoScreenState extends State<PickPhotoScreen> {
  final ImagePicker _picker = ImagePicker();
  List<XFile>? _selectedImages = [];

  Future<void> _pickImages() async {
    final List<XFile>? pickedFiles = await _picker.pickMultiImage();
    if (pickedFiles != null) {
      setState(() {
        _selectedImages = pickedFiles;
      });
    }
  }

  void _sendImages() {
    // 여기에 선택한 이미지를 전송하는 로직을 추가
    // 예: 서버에 전송하는 API 호출
    print('전송할 이미지: ${_selectedImages?.map((file) => file.path)}');
    Navigator.pop(context, _selectedImages);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('사진 선택하기'),
        actions: [
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: _sendImages,
          ),
        ],
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: _pickImages,
            child: const Text('갤러리에서 이미지 선택'),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: _selectedImages == null || _selectedImages!.isEmpty
                ? const Center(child: Text('선택된 이미지가 없습니다.'))
                : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemCount: _selectedImages!.length,
              itemBuilder: (context, index) {
                return Image.file(
                  File(_selectedImages![index].path),
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
