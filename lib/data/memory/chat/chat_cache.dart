import '../../entity/chat/chat_log.dart';
import 'cached_chat_log.dart';

class ChatCache {
  final Map<String, CachedChatLog> _cache = {};

  void addCachedChatLog(CachedChatLog CachedChatLog) {
    _cache[CachedChatLog.roomId] = CachedChatLog;
  }

  CachedChatLog? getCachedChatLog(String roomId) {
    return _cache[roomId];
  }
}