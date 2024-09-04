import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fast_app_base/common/common.dart'; // 앱 색상 및 스타일

class ChatInputField extends ConsumerStatefulWidget {
  final Function(String) onSendMessage;

  ChatInputField({required this.onSendMessage, Key? key}) : super(key: key);

  @override
  _ChatInputFieldState createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends ConsumerState<ChatInputField> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isButtonEnabled = false; // 버튼 활성화 상태

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _isButtonEnabled = _controller.text.trim().isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // TextEditingController를 메모리에서 해제
    _focusNode.dispose(); // FocusNode를 메모리에서 해제
    super.dispose();
  }

  void _addEmoji(String emoji) {
    final text = _controller.text;
    final newText = text + emoji;
    _controller.text = newText;
    _controller.selection = TextSelection.fromPosition(
      TextPosition(offset: newText.length),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // 화면의 다른 부분을 터치하면 포커스를 해제
        FocusScope.of(context).unfocus();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 100, // 최대 높이를 설정 (5줄의 높이)
                ),
                child: TextField(
                  controller: _controller,
                  focusNode: _focusNode,
                  cursorColor: AppColors.mainPurple,
                  maxLines: null, // 자동으로 줄 수에 따라 확장되도록 설정
                  minLines: 1, // 최소 1줄
                  style: TextStyle(
                    fontSize: 13, // 폰트 크기 조절
                    color: Colors.black, // 폰트 색상 조절
                  ),
                  decoration: InputDecoration(
                    hintText: '하마와 대화를 해볼까요?',
                    hintStyle: TextStyle(
                      fontSize: 13,
                      color: _focusNode.hasFocus
                          ? AppColors.mainPurple
                          : AppColors.forthGrey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: AppColors.secondGrey,
                        width: 1.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: _isButtonEnabled ? AppColors.mainPurple : AppColors.forthGrey,
                        width: _isButtonEnabled ? 1.5 : 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(
                        color: AppColors.mainPurple,
                        width: 1.5,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), // 텍스트를 세로 중앙에 맞추기 위한 패딩
                    suffixIcon: _isButtonEnabled
                        ? IconButton(
                      icon: Icon(Icons.send, color: AppColors.mainPurple),
                      onPressed: () {
                        final text = _controller.text;
                        if (text.isNotEmpty) {
                          widget.onSendMessage(text);
                          _controller.clear();
                          FocusScope.of(context).unfocus();
                        }
                      },
                    )
                        : null,
                  ),
                ),
              ),
            ),
          ],
        ).pSymmetric(h: 15).pOnly(bottom: 50),
      ),
    );
  }
}
