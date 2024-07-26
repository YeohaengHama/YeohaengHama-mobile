import 'package:fast_app_base/screen/client/main/tab/shorts/comment/w_comment.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../../../../../common/common.dart';
import '../../../../../../common/widget/w_rounded_container.dart';
import '../../../../../../data/entity/shorts/vo_shorts_comment.dart';
import '../../../../../../data/memory/shorts/p_comment_read.dart';
import '../../../../../../data/network/shorts_api.dart';

class CommentListFragment extends ConsumerStatefulWidget {
  const CommentListFragment(this.shortId, {Key? key}) : super(key: key);

  final int shortId;

  @override
  ConsumerState<CommentListFragment> createState() => _CommentListFragmentState();
}

class _CommentListFragmentState extends ConsumerState<CommentListFragment> {
  bool _isLoading = true; // 로딩 상태를 관리할 변수

  @override
  void initState() {
    super.initState();
    _loadComments();
  }

  Future<void> _loadComments() async {
    try {
      await ref.read(shortsApiProvider).readComment(widget.shortId, ref);
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false; // 로딩이 끝났음을 표시
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final _commentList = ref.watch(commentListProvider);

    if (_isLoading) {
      return SliverFillRemaining(
        child: Center(
            child: LoadingAnimationWidget.fallingDot(
                color: AppColors.mainPurple, size: 100))
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            if (index < _commentList.comment.length) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: CommentWidget(
                  comment: _commentList.comment[index],
                ).pSymmetric(v: 10),
              );
            } else {
              return const SizedBox.shrink(); // Empty placeholder
            }
          },
          childCount: _commentList.comment.isEmpty ? 1 : _commentList.comment.length,
        ),
      ),
    );
  }
}
