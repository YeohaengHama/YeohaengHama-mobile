import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../entity/notification/vo_notification_message.dart';

final notificationMessageListProvider = StateNotifierProvider<NotificationMessageNotifier, List<NotificationMessage>>((ref) {
  return NotificationMessageNotifier();
});

class NotificationMessageNotifier extends StateNotifier<List<NotificationMessage>> {
  NotificationMessageNotifier() : super([]);

  void addNotificationMessage(NotificationMessage newMessage) {

    state = [...state, newMessage];
  }


}