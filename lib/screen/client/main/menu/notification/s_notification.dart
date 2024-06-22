import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../../data/memory/notification/notification_provider.dart';
import '../../../../../data/network/notification_api.dart';

class NotificationScreen extends ConsumerStatefulWidget {


  const NotificationScreen({
    Key? key,
  }) : super(key: key);


  @override
  _NotificationScreenState createState() => _NotificationScreenState();

}

class _NotificationScreenState extends ConsumerState<NotificationScreen> {
  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    final notification = ref.watch(notificationMessageListProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Consumer(
        builder: (context, watch, child) {
          return ListView.builder(
            itemCount: notification.length,
            itemBuilder: (context, index) {
              final message = notification[index];
              return ListTile(
                title: Text('Event: ${message.event}'),
                subtitle: Text('${message.data})'),
              );
            },
          );
        },
      ),
    );
  }
}
