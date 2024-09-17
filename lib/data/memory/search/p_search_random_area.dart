import 'package:fast_app_base/data/entity/area/search_simple_toursim_result.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final randomAreaApiResponseProvider = StateNotifierProvider<RandomAreaNotifier, List<SearchSimpleTourismResult>>((ref) {
  return RandomAreaNotifier();
});

class RandomAreaNotifier extends StateNotifier<List<SearchSimpleTourismResult>> {
  RandomAreaNotifier() : super([]);

  String _contentTypeId= "";
  String _contentId = "";
  String _title = "";
  String _addr1 = "";
  String _addr2 = "";
  String _firstimage = "";

  void resetSimpleAreas() {
    state = [];
  }

  void addSimpleAreas(List<SearchSimpleTourismResult> searchSimpleTourismResults) {
    state = [...state, ...searchSimpleTourismResults];
  }
  void getSimpleArea(String contentTypeId, String contentId, String title, String addr1, String addr2, String firstimage) {
    _contentTypeId = contentTypeId;
    _contentId = contentId;
    _title = title;
    _addr1 = addr1;
    _addr2 = addr2;
    _firstimage = firstimage;

    // SearchSimpleResult 객체 생성 및 상태 업데이트
    // addSimpleArea(SearchSimpleResult(
    //   contentTypeId: _contentTypeId,
    //   contentId: _contentId,
    //   title: _title,
    //   addr1: _addr1,
    //   addr2: _addr2,
    //   firstimage: _firstimage,
    // ));
  }
}
