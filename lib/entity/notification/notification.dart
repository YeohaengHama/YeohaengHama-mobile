import 'notification_type.dart';

class HamaNotification {
  final NotificationType type;
  final String title;
  final String description;
  final DateTime time;
  bool isRead;

  HamaNotification(
      this.type,
      this.title,
      this.description,
      this.time, {
        this.isRead = false,
      });
}
