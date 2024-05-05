
import 'package:fast_app_base/entity/area/vo_tourism_detail.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../data/network/hama_api.dart';


final tourismPostProvider = AutoDisposeFutureProviderFamily<TourismDetail,int>((ref, id) async {
  return await HamaApi.getPost(id);
});