import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isDetailLoadingProvider = StateNotifierProvider<DetailLoadingNotifier, bool>((ref) => DetailLoadingNotifier());

class DetailLoadingNotifier extends StateNotifier<bool> {
  DetailLoadingNotifier() : super(false);

  void setLoading(bool value) {
    state = value;
  }
}
