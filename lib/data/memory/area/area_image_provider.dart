import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../entity/area/saerch_image_result.dart';

final AreaImageApiResponseProvider =
StateNotifierProvider<AreaImageNotifier, SearchImageResult?>((ref) {
  return AreaImageNotifier();
});

class AreaImageNotifier extends StateNotifier<SearchImageResult?> {
  List<String>? _imageUrl;

  AreaImageNotifier() : super(null) {
    _imageUrl = [];
  }

  void addAreaImage(SearchImageResult searchImageResult) {
    state = searchImageResult;
  }
}
