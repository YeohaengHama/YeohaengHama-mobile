import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/meeting/s_chat.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../data/entity/chat/chatRoom.dart';
import '../../../../../data/memory/account/user_provider.dart';

class ChatRoomsListWidget extends ConsumerStatefulWidget {
  const ChatRoomsListWidget(this.chatRoom, {super.key});

  final ChatRoom chatRoom;

  @override
  ConsumerState<ChatRoomsListWidget> createState() =>
      _ChatRoomsListWidgetState();
}

class _ChatRoomsListWidgetState extends ConsumerState<ChatRoomsListWidget> {
  @override
  Widget build(BuildContext context) {
    final currentAccount = ref.read(accountProvider);
    return Tap(
      onTap: () {

        Nav.push(ChatScreen(widget.chatRoom, currentAccount!.nickName)); },
      child: Column(children: [
        Row(
          children: [
            widget.chatRoom.name.text.bold
                .size(15)
                .color(AppColors.primaryGrey)
                .make()
          ],
        ).pSymmetric(h: contentLeftPadding, v: 15),
        const Line(color: AppColors.outline, height: 1,)
      ],
      ),
    );
  }
}
