import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/common/widget/w_tap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../data/memory/chat/chat_room_proivder.dart';
import '../../../../../data/network/chat_api.dart';
import 'w_chat_room_list.dart';

class MeetingFragment extends ConsumerStatefulWidget {
  const MeetingFragment({super.key});

  @override
  ConsumerState<MeetingFragment> createState() => _MeetingFragmentState();
}


class _MeetingFragmentState extends ConsumerState<MeetingFragment> {
  @override
  void initState(){
    super.initState();
    final chatApi = ref.read(chatApiProvider);
    chatApi.findAllChatRoom(ref);
  }
  @override
  Widget build(BuildContext context) {
    final rooms = ref.watch(chatRoomsProvider);

    return Scaffold(
      appBar: AppBar(

        title: '모임'.text.make(),
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: rooms.length,
              itemBuilder: (context, index) {
                final reversedIndex = rooms.length - 1 - index;
                final room = rooms[reversedIndex];
                return ChatRoomsListWidget(room);
              },
            ),
          ),

        ],
      ),
    );
  }
}
