import 'package:fast_app_base/data/entity/area/search_simple_result.dart';
import 'package:fast_app_base/data/entity/itinerary/vo_itinerary.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../entity/area/search_simple_result.dart';

final simpleAreaApiResponseProvider = StateNotifierProvider<SimpleAreaNotifier, List<SearchSimpleResult>>((ref) {

return SimpleAreaNotifier();
});

class SimpleAreaNotifier extends StateNotifier<List<SearchSimpleResult>>{
  SimpleAreaNotifier() : super([]);

  String getContentTypeId = "";
  String getContentId = "";
  String getTitle = "";
  String getAddr1 = "";
  String getAddr2 = "";
  String getFirstimage = "";

  void addSimpleArea(SearchSimpleResult searchSimpleResult){
    state = [...state, searchSimpleResult];
  }
  void getSimpleArea(String contentTypeId, String contentId,String title,  String addr1, String addr2,String firstimage){
    getContentTypeId = contentTypeId;
    getContentId = contentId;
    getTitle = title;
    getAddr1 = addr1;
    getAddr2 = addr2;
    getFirstimage = firstimage;
  }
}