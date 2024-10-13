class CachedChatLog {
  final String roomId;
  final List<CachedMessage> messages;

  CachedChatLog({required this.roomId, required this.messages});
}

class CachedMessage {
  final String type;
  final String sender;
  final String message;

  CachedMessage({required this.type, required this.sender, required this.message});
}