import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/shorts/comment/f_comment_list.dart';
import 'package:fast_app_base/screen/client/main/tab/shorts/comment/w_comment_input.dart';
import '../../../../../../common/widget/w_scroll_holder.dart';
import '../../../../../../data/memory/shorts/p_comment_read.dart';

class CommentScreen extends ConsumerStatefulWidget {
  const CommentScreen({
    Key? super.key,
    required this.scrollController,
    required this.shortsId,
  });

  final ScrollController scrollController;
  final int shortsId;

  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends ConsumerState<CommentScreen> {
  final FocusNode _focusNode = FocusNode(); // FocusNode 생성

  @override
  void dispose() {
    _focusNode.dispose(); // FocusNode를 메모리에서 해제
    super.dispose();
  }

  void _unfocusTextField() {
    FocusScope.of(context).unfocus(); // 포커스를 해제
  }

  @override
  Widget build(BuildContext context) {
    final commentListP = ref.watch(commentListProvider);
    final commentList = ref.read(commentListProvider.notifier).state;

    return GestureDetector(
      onTap: _unfocusTextField, // 부모 위젯의 클릭 이벤트로 포커스 해제
      child: Scaffold(
        body: CustomScrollView(
          controller: widget.scrollController,
          slivers: [
            SliverPersistentHeader(
              delegate: _SliverAppBarDelegate(
                child: Container(
                  color: Colors.white,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: ScrollHolder(),
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          '댓글',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: AppColors.primaryGrey,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Divider(height: 0.5),
                    ],
                  ),
                ),
              ),
              pinned: true, // Keep the header pinned at the top
            ),
            CommentListFragment(widget.shortsId),
            if (commentList.comment.isEmpty)
              SliverToBoxAdapter(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '아직 작성 된 댓글이 없어요.\n',
                        style: TextStyle(
                          color: AppColors.mainPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: '댓글을 작성해 볼까요?',
                        style: TextStyle(color: AppColors.mainPurple),
                      ),
                    ],
                  ),
                ).pSymmetric(v: 30),
              ),
          ],
        ),
        bottomSheet: CommentInputWidget(
          shortsId: widget.shortsId,
          focusNode: _focusNode, // FocusNode 전달
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox(
      height: 52, // Adjust the height as needed
      child: child,
    );
  }

  @override
  double get maxExtent => 52; // Adjust the height as needed

  @override
  double get minExtent => 52; // Adjust the height as needed

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
