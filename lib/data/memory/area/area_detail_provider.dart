import 'package:fast_app_base/data/entity/area/search_simple_toursim_result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../entity/area/serch_detail_result.dart';

final DetailAreaApiResponseProvider =
StateNotifierProvider<DetailAreaNotifier, AsyncValue<SearchDetailResult>>((ref) {
  return DetailAreaNotifier();
});

class DetailAreaNotifier extends StateNotifier<AsyncValue<SearchDetailResult>> {
  DetailAreaNotifier() : super(AsyncValue.loading());


  void addDetailArea(SearchDetailResult searchDetailResult) {
    state = AsyncValue.data(searchDetailResult);
  }

  Future<void> getDetailArea(String contentTypeId, String contentId, String title, String addr1, String addr2,
      String firstimage) async {
    try {
      // Set loading state
      state = AsyncValue.loading();

      // Fetch data here
      final searchDetailResult = await fetchData(contentTypeId, contentId, title, addr1, addr2);

      // Set data state
      state = AsyncValue.data(searchDetailResult);
    } catch (e) {
      // Set error state
      state = AsyncValue.error(e,StackTrace.empty);
    }
  }

  Future<SearchDetailResult> fetchData(String contentTypeId, String contentId, String title, String addr1,
      String addr2) async {
    // Add logic for handling firstimage if needed
    // Simulate a delay to show loading state
    await Future.delayed(Duration(seconds: 2));

    // Simulate fetching data from an API
    return SearchDetailResult(
      // Populate with your fetched data
      contentTypeId: contentTypeId,
      contentId: contentId,
      title: title,
      addr1: addr1,
      addr2: addr2, overView: '', mapX: '', mapY: '',
    );
  }
}
