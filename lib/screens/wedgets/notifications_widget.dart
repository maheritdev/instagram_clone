import 'package:flutter/material.dart';

import '../../models/NotificationItem.dart';

class NotificationsWidget extends StatelessWidget {
  NotificationsWidget({super.key});
  final List<NotificationItem> notifications = [
    NotificationItem(
      type: NotificationType.like,
      title: 'karenme liked your photo.',
      time: 'New',
      icon: Icons.favorite_border,
      likes: 10,
      userImage: "https://plus.unsplash.com/premium_photo-1747939638870-0ff91f985e02?q=80&w=2126&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
    NotificationItem(
      type: NotificationType.likeMultiple,
      title: 'kiero_d, zackighn and 26 others liked your photo.',
      time: 'Today',
      icon: Icons.favorite_border,
      showGender: true,
      likes: 5,
      userImage: "https://images.unsplash.com/photo-1741332966044-513c26163864?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
    NotificationItem(
      type: NotificationType.mention,
      title: 'craig_love mentioned you in a comment: @jacob_w exactly...',
      time: 'This Week',
      icon: Icons.chat_bubble_outline,
      likes: 20,
      userImage: "https://images.unsplash.com/photo-1743437327074-597e102cf27c?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
    NotificationItem(
      type: NotificationType.follow,
      title: 'martini_rond started following you.',
      time: '3d',
      icon: Icons.person_add,
      showMessageButton: true,
      userImage: "https://images.unsplash.com/photo-1751182782142-000e62239d85?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
    NotificationItem(
      type: NotificationType.follow,
      title: 'mavjacobson started following you.',
      time: '3d',
      icon: Icons.person_add,
      showMessageButton: true,
      userImage: "https://images.unsplash.com/photo-1751644372956-eb3250751df6?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
    NotificationItem(
      type: NotificationType.follow,
      title: 'mis_potter started following you.',
      time: '3d',
      icon: Icons.person_add,
      showFollowButton: true,
      userImage: "https://images.unsplash.com/photo-1755214614215-663f77355a70?q=80&w=1075&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
    NotificationItem(
      type: NotificationType.header,
      title: 'This Month',
      time: '',
      icon: Icons.calendar_today,
      userImage: "https://images.unsplash.com/photo-1756406902860-eed293e333ed?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
    ),
  ];  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Follow Requests'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];

          if (notification.type == NotificationType.header) {
            return _buildHeaderItem(notification);
          } else {
            return _buildNotificationItem(notification);
          }
        },
      ),
    );
  }

  Widget _buildHeaderItem(NotificationItem notification) {
    return Container(
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            child: Text(
              notification.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationItem(NotificationItem notification) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: CircleAvatar(
        radius: 25.0,
        backgroundImage:  NetworkImage(notification.userImage),
      ),
      title: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
          children: _buildTitleSpans(notification),
        ),
      ),
      subtitle: Text(
        notification.time,
        style: TextStyle(
          color: Colors.grey[600],
          fontSize: 12,
        ),
      ),
      trailing: _buildTrailingWidget(notification),
    );
  }

  List<TextSpan> _buildTitleSpans(NotificationItem notification) {
    final text = notification.title;
    final spans = <TextSpan>[];
    final words = text.split(' ');

    for (int i = 0; i < words.length; i++) {
      final word = words[i];
      final isUsername = i == 0 && word.contains('_');
      final isMention = word.startsWith('@');

      spans.add(TextSpan(
        text: word + (i < words.length - 1 ? ' ' : ''),
        style: TextStyle(
          fontWeight: isUsername || isMention ? FontWeight.bold : FontWeight.normal,
          color: isUsername || isMention ? Colors.blue : Colors.black,
        ),
      ));
    }

    return spans;
  }

  Widget _buildTrailingWidget(NotificationItem notification) {
    if (notification.showArrow) {
      return Icon(Icons.arrow_upward, color: Colors.grey);
    } else if (notification.likes != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(notification.userImage,height: 50,width: 50,fit: BoxFit.cover,)
        ],
      );
    } else if (notification.showMessageButton) {
      return TextButton(
        onPressed: () {},
        child: Text('Message', style: TextStyle(color: Colors.blue)),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 12),
          minimumSize: Size(0, 0),
        ),
      );
    } else if (notification.showFollowButton) {
      return TextButton(
        onPressed: () {},
        child: Text('Follow', style: TextStyle(color: Colors.blue)),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 12),
          minimumSize: Size(0, 0),
        ),
      );
    }

    return SizedBox.shrink();;
  }
}
