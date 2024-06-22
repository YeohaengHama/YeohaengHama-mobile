import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_notification_message.freezed.dart';
part 'vo_notification_message.g.dart';

@freezed
abstract class NotificationMessage with _$NotificationMessage {
  const factory NotificationMessage({
    required String id,
    required String event,
    required String data,
  }) = _NotificationMessage;

  factory NotificationMessage.fromJson(Map<String, dynamic> json) => _$NotificationMessageFromJson(json);
}
