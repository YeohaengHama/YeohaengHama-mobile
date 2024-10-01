import 'package:fast_app_base/screen/client/main/tab/shorts/comment/w_comment.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:card_loading/card_loading.dart';

import '../../../../../../common/common.dart';
import '../../../../../../data/memory/shorts/p_comment_read.dart';
import '../../../../../../data/memory/shorts/p_comment_write_loading.dart';
import '../../../../../../data/network/shorts_api.dart';

class CommentListFragment extends ConsumerStatefulWidget {
  const CommentListFragment(this.shortId, {Key? super.key});

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
    final commentList = ref.watch(commentListProvider);
    final writeLoading = ref.watch(commentWriteLoadingProvider);

    if (_isLoading) {
      return SliverFillRemaining(
        child: Center(
          child: LoadingAnimationWidget.fallingDot(
            color: AppColors.mainPurple,
            size: 100,
          ),
        ),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
            if (writeLoading && index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: _buildCardLoading(),
              );
            }
            int commentIndex = writeLoading ? index - 1 : index;
            int reverseIndex = commentList.comment.length - 1 - commentIndex;
            if (reverseIndex >= 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: CommentWidget(
                  comment: commentList.comment[reverseIndex],
                ),
              );
            } else {
              return const SizedBox.shrink(); // Empty placeholder
            }
          },
          childCount: commentList.comment.length + (writeLoading ? 1 : 0),
        ),
      ),
    );
  }

  Widget _buildCardLoading() {
    return Row(
      children: [
        CardLoading(
          height: 40,
          width: 40,
          borderRadius: BorderRadius.circular(100),
          margin: EdgeInsets.only(right: 10),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CardLoading(
                    height: 14,
                    width: 35,
                    borderRadius: BorderRadius.circular(5),
                    margin: EdgeInsets.only(bottom: 10),
                  ),
                  const Width(10),
                  CardLoading(
                    height: 14,
                    width: 20,
                    borderRadius: BorderRadius.circular(5),
                    margin: EdgeInsets.only(bottom: 10),
                  ),
                ],
              ),
              CardLoading(
                height: 14,
                width:150,
                borderRadius: BorderRadius.circular(5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
