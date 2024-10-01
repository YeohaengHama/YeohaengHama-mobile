import 'package:fast_app_base/data/network/api_error.dart';
import 'package:fast_app_base/entity/area/vo_tourism_detail.dart';
import 'package:fast_app_base/entity/dummies.dart';


import '../../entity/notification/notification.dart';
import '../../entity/notification_dummies.dart';
import '../simple_result.dart';

class HamaApi {
  static Future<
      SimpleResult<List<HamaNotification>, ApiError>> getNotification() async {
    // await sleepAsync(500.ms);
    return SimpleResult.success(notificationList);
  }

  static Future<TourismDetail> getPost(int id) async {
    // await sleepAsync(500.ms);
    return TourismDetail(tourism: tourism1, content: '관광지입니다.');
  }
}
