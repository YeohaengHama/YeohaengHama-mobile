import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_profile_image.dart';
import '../../../../../../data/memory/account/user_provider.dart';
import '../../../../../../data/memory/shorts/p_comment_write_loading.dart';
import '../../../../../../data/network/shorts_api.dart';

class CommentInputWidget extends ConsumerStatefulWidget {
  const CommentInputWidget({
    Key? super.key,
    required this.shortsId,
    required this.focusNode, // FocusNode 추가
  });

  final int shortsId;
  final FocusNode focusNode; // FocusNode 속성 추가

  @override
  _CommentInputWidgetState createState() => _CommentInputWidgetState();
}

class _CommentInputWidgetState extends ConsumerState<CommentInputWidget> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _emojis = ['❤️', '🙌', '🔥', '👏', '😢', '😍', '🥳', '😎']; // 사용할 이모지 목록
  bool _isButtonEnabled = false; // 버튼 활성화 상태

  bool _isLoading = false; // 로딩 상태

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

  Future<void> _submitComment() async {
    final newComment = _controller.text.trim();
    final account = ref.read(accountProvider);
    final writeLoading = ref.read(commentWriteLoadingProvider.notifier);

    if (newComment.isEmpty) return;

    setState(() {
      writeLoading.setCheckWrited(true);
      _isLoading = true; // 로딩 시작
      _isButtonEnabled = false; // 버튼 비활성화
    });

    try {
      await ref.read(shortsApiProvider).createComment(widget.shortsId, int.parse(account!.id), newComment, ref);
    } catch (e) {
      // 에러 핸들링
      print("Error submitting comment: $e");
    } finally {
      setState(() {
        _isLoading = false; // 로딩 종료
        writeLoading.setCheckWrited(false);

        _controller.clear(); // 입력 필드 초기화
        _isButtonEnabled = _controller.text.trim().isNotEmpty; // 버튼 활성화 상태 다시 설정
      });
      FocusScope.of(context).unfocus(); // 키보드 닫기
      ref.read(shortsApiProvider).readShorts(ref);
    }
  }

  @override
  Widget build(BuildContext context) {
    final account = ref.read(accountProvider);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode()); // 텍스트 필드 외부를 클릭하면 포커스를 해제
      },
      child: Stack(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        offset: Offset(0, -1),
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: const Line(height: 1, color: AppColors.outline),
                ),
                // 이모지 선택 부분
                SizedBox(
                  height: 40,
                  child: Row(
                    children: _emojis.map((emoji) {
                      return Expanded(
                        child: GestureDetector(
                          onTap: () => _addEmoji(emoji),
                          child: Center(
                            child: Text(
                              emoji,
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ).pSymmetric(v: 10),
                Row(
                  children: [
                    ProfileImage(photoUrl: account!.photoUrl, width: 45, height: 45),
                    SizedBox(width: 15),
                    Expanded(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: 100, // 최대 높이를 설정 (5줄의 높이)
                        ),
                        child: TextField(
                          controller: _controller,
                          cursorColor: AppColors.mainPurple,
                          maxLines: null, // 자동으로 줄 수에 따라 확장되도록 설정
                          minLines: 1, // 최소 1줄
                          focusNode: widget.focusNode, // 부모 위젯에서 전달받은 FocusNode 사용
                          style: TextStyle(
                            fontSize: 13, // 폰트 크기 조절
                            color: Colors.black, // 폰트 색상 조절
                          ),
                          decoration: InputDecoration(
                            hintText: '댓글 달기...',
                            hintStyle: TextStyle(
                              fontSize: 13,
                              color: widget.focusNode.hasFocus
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
                                width:  _isButtonEnabled ? 1.5 :1.0,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(
                                color: _isButtonEnabled || widget.focusNode.hasFocus ? AppColors.mainPurple : AppColors.secondGrey,
                                width: 1.5,
                              ),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10), // 텍스트를 세로 중앙에 맞추기 위한 패딩
                            suffixIcon: _isButtonEnabled
                                ? IconButton(
                              icon: Icon(Icons.send, color: AppColors.mainPurple),
                              onPressed: _submitComment,
                            )
                                : null,
                          ),
                        ),
                      ),
                    ),
                  ],
                ).pSymmetric(h: 15),
              ],
            ),
          ),
          // if (_isLoading)
          //   Positioned.fill(
          //     child: Container(
          //         child: Center(
          //             child: LoadingAnimationWidget.fallingDot(
          //                 color: AppColors.mainPurple, size: 100))
          //     ),
          //   ),
        ],
      ),
    );
  }
}
