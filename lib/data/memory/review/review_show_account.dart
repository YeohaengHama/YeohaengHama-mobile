import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../../entity/review/vo_review_show_account_.dart';

final reviewShowAccountProvider = StateNotifierProvider<ReviewShowAccountNotifier, List<ReviewShowAccount>>(
      (ref) {
    return ReviewShowAccountNotifier();
  },
);

class ReviewShowAccountNotifier extends StateNotifier<List<ReviewShowAccount>> {
  ReviewShowAccountNotifier() : super([]); // Initialize with an empty list

  void addReview(List<ReviewShowAccount> reviews) {
    state = reviews;
  }

  void updateReviews(List<ReviewShowAccount> reviews) {
    state = reviews;
  }

  void clearReviews() {
    state = [];
  }
}
