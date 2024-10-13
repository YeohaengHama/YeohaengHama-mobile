import 'package:freezed_annotation/freezed_annotation.dart';

import 'message.dart';

part 'chat_log.freezed.dart';
part 'chat_log.g.dart';

@freezed
class ChatLog with _$ChatLog {
  factory ChatLog({
    required String roomId,
    required List<Message> messages,
  }) = _ChatLog;

  factory ChatLog.fromJson(Map<String, dynamic> json) => _$ChatLogFromJson(json);
}
