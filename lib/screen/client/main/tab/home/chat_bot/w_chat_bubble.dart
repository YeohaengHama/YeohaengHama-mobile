import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/home/chat_bot/w_diary_all.dart';
import 'package:fast_app_base/screen/client/main/tab/home/chat_bot/w_diary_place.dart';
import 'package:fast_app_base/screen/client/main/tab/home/chat_bot/w_popular_area.dart';
import 'package:flutter/material.dart';

import '../../../../../../data/entity/bot/chat_bot.dart';
import '../../../../../../data/entity/bot/chat_message.dart';

class ChatBubble<T> extends StatelessWidget {
  final ChatMessage<T> message;
  final Function(String) onSendMessage; // 메시지를 전송하는 콜백

  const ChatBubble({required this.message, required this.onSendMessage});

  @override
  Widget build(BuildContext context) {
    final double bubbleRadius = 10.0;
    return Align(
      alignment: message.isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: BoxDecoration(
          color: message.isUser ? AppColors.mainPurple : AppColors.whitePuple,
          borderRadius: message.isUser
              ? BorderRadius.only(
              topLeft: Radius.circular(bubbleRadius),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(bubbleRadius),
              bottomRight: Radius.circular(bubbleRadius))
              : BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(bubbleRadius),
              bottomLeft: Radius.circular(bubbleRadius),
              bottomRight: Radius.circular(bubbleRadius)),
        ),
        child: _buildMessageWidget(message),
      ),
    );
  }

  Widget _buildMessageWidget(ChatMessage<T> message) {
    final messageType = message.type;

    List<Widget> content = [];

    // 메세지 본문 추가
    Widget mainContent;
    switch (messageType) {
      case 'showDiaryAll':
        mainContent = DiaryAllWidget(data: message.result as ShowDiaryAllResult);
        break;
      case 'showDiaryPlace':
        mainContent = DiaryPlaceWidget(data: message.result as ShowDiaryPlaceResult);
        break;
      case 'showPopularArea':
        mainContent = PopularAreaWidget(data: message.result as ShowPopularAreaResult);
        break;
      default:
        mainContent = Text(
          message.text,
          style: TextStyle(color: message.isUser ? Colors.white : AppColors.secondGrey),
        );
    }
    content.add(mainContent);

    // other 데이터가 존재하면 추가
    if (message.other != null && message.other!.isNotEmpty) {
      content.add(SizedBox(height: 10)); // 메시지 본문과 구분을 위해 간격 추가
      content.add(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  '추가질문',
                  style: TextStyle(color: AppColors.mainPurple),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: Container(
                    height: 1,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            ...message.other!.map((suggestion) {
              final key = suggestion.keys.first;
              // ':' 이후의 숫자를 제거
              final cleanKey = key.split(':').first.trim();
              return GestureDetector(
                onTap: () {
                  // 클릭 시 메시지 전송
                  onSendMessage(cleanKey);
                },
                child: RoundedContainer(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  backgroundColor: Colors.white,
                  child: SizedBox(
                    child: Center(
                      child: Text(
                        cleanKey,
                        style: TextStyle(color: AppColors.mainPurple, fontSize: 12),
                      ),
                    ),
                  ),
                ).pSymmetric(v: 5),
              );
            }).toList(),
          ],
        ),
      );
    }

    return Column(
      crossAxisAlignment: message.isUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: content,
    );
  }
}
