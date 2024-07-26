import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../entity/shorts/vo_shorts_comment.dart';

final commentListProvider = StateNotifierProvider<CommentListNotifier, CommentList>((ref) {
  return CommentListNotifier();
});


class CommentListNotifier extends StateNotifier<CommentList> {
  CommentListNotifier() : super(CommentList(comment: []));


  void clearCommentList() {
    state = state.copyWith(comment: []);
  }

}

