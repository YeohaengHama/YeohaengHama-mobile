import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';

@freezed
class ChatMessage<T> with _$ChatMessage<T> {
  const factory ChatMessage({
    required String text,
    required bool isUser,
    required String type, // Message type
    required T? result, // Generic result
    required List<Map<String, double>>? other, // Other suggestions, nullable
  }) = _ChatMessage<T>;

  factory ChatMessage.fromJson(
      Map<String, dynamic> json,
      T Function(Object? json) fromJsonT,
      ) {
    return ChatMessage<T>(
      text: json['text'] as String,
      isUser: json['isUser'] as bool,
      type: json['type'] as String,
      result: json['result'] == null ? null : fromJsonT(json['result']),
      other: (json['other'] as List<dynamic>?)
          ?.map((e) => Map<String, double>.from(e as Map))
          .toList(),
    );
  }
}
