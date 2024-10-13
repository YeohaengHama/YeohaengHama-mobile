import 'package:fast_app_base/data/network/chat_api.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../data/entity/chat/chatRoom.dart';

class TextInputWidget extends ConsumerStatefulWidget {
  final TextEditingController controller;
  final VoidCallback onSendMessage;
  final ChatRoom chatRoom;
  final String sender;
  final ScrollController scrollController; // 스크롤 컨트롤러 추가

  const TextInputWidget({
    Key? key,
    required this.chatRoom,
    required this.sender,
    required this.controller,
    required this.onSendMessage,
    required this.scrollController, // 스크롤 컨트롤러 추가
  }) : super(key: key);

  @override
  ConsumerState<TextInputWidget> createState() => _TextInputWidgetState();
}

class _TextInputWidgetState extends ConsumerState<TextInputWidget> {
  final ImagePicker _picker = ImagePicker();
  List<XFile>? _selectedImages = [];

  Future<void> _pickImages() async {
    final List<XFile>? pickedFiles = await _picker.pickMultiImage();
    if (pickedFiles != null) {
      setState(() {
        _selectedImages = pickedFiles;
      });
      _sendImages(); // 이미지 선택 후 바로 전송
    }
  }

  void _sendImages() {
    // 여기에 선택한 이미지를 전송하는 로직을 추가
    if (_selectedImages != null && _selectedImages!.isNotEmpty) {
      List<String> imagePaths =
      _selectedImages!.map((file) => file.path).toList();

      // 여기에서 sendPhoto 호출, roomId 및 sender는 실제 값으로 대체해야 함
      ref.read(chatApiProvider).sendPhoto(
          widget.chatRoom.roomId, widget.sender, imagePaths, ref); // ref도 추가
      print('전송할 이미지: $imagePaths');

      // 전송이 완료된 후 선택한 이미지를 초기화
      setState(() {
        _selectedImages = [];
      });

      // 메시지 전송이 필요한 경우 여기에 추가
      widget.onSendMessage();
      _scrollToBottom(); // 메시지 전송 후 스크롤
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.scrollController.hasClients) {
        // 현재 스크롤 위치가 최하단에 있는지 확인
        if (widget.scrollController.position.atEdge && widget.scrollController.position.pixels == widget.scrollController.position.maxScrollExtent) {
          widget.scrollController.animateTo(
            widget.scrollController.position.maxScrollExtent,
            duration: const Duration(milliseconds: 100),
            curve: Curves.easeOut,
          );
        }
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteGrey,
      padding: const EdgeInsets.only(bottom: 30.0, left: 8.0, right: 8.0, top: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: _pickImages, // 이미지 선택 버튼
            child: Icon(Icons.add_a_photo_outlined, color: AppColors.forthGrey)
                .pSymmetric(h: 10)
                .pOnly(right: 5),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: TextField(
                style: TextStyle(color: AppColors.primaryGrey),
                cursorColor: AppColors.mainPurple,
                controller: widget.controller,
                maxLines: 5,
                minLines: 1,
                decoration: InputDecoration(
                  hintText: '메시지 보내기...',
                  hintStyle: TextStyle(
                    color: AppColors.secondGrey,
                  ),
                  border: InputBorder.none,
                ),
                onTap: _scrollToBottom, // 텍스트 필드 클릭 시 스크롤
                onSubmitted: (value) {
                  widget.onSendMessage();
                  widget.controller.clear();
                  _scrollToBottom(); // 메시지 전송 후 스크롤
                },
              ),
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              widget.onSendMessage();
              widget.controller.clear();
              _scrollToBottom(); // 메시지 전송 후 스크롤
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              decoration: BoxDecoration(
                color: AppColors.whiteGrey,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Icon(
                Icons.send,
                color: AppColors.forthGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
