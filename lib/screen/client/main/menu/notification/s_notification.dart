import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../data/entity/account/vo_current_account.dart';
import '../../../../../data/memory/notification/notification_provider.dart';
import '../../../../../data/network/notification_api.dart';

class NotificationScreen extends ConsumerStatefulWidget {
  final CurrentAccount currentAccount;

  const NotificationScreen(this.currentAccount, {Key? super.key});

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends ConsumerState<NotificationScreen> {
  @override
  void initState() {
    super.initState();
    final notiApi = ref.read(notificationApiProvider);
    notiApi.startListeningToServer(widget.currentAccount.id!, ref);
  }

  @override
  Widget build(BuildContext context) {
    final notification = ref.watch(notificationMessageListProvider);
    final filteredNotification = notification.where((message) => message.event == '01').toList();

    return WillPopScope(
      onWillPop: () async {
        ref.read(notificationMessageListProvider.notifier).state = [];
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: '알림'.text.size(17).make(),
          centerTitle: false,
        ),
        body: Consumer(
          builder: (context, watch, child) {
            return ListView.builder(
              itemCount: filteredNotification.length,
              itemBuilder: (context, index) {
                final message = filteredNotification[index];
                return Column(
                  children: [
                    const Line(color: AppColors.outline, height: 1,),
                    ListTile(
                      leading: ClipOval(child: Container( width: 35, height :35,color: AppColors.mainPurple, child: Icon(Icons.notifications_none,color: Colors.white,))),
                      title: '일정에 초대되었습니다.'.text.size(15).make(),
                    ),
                    const Line(color: AppColors.outline, height: 1,),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
