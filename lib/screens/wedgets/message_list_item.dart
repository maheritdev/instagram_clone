import 'dart:math';

import 'package:flutter/material.dart';

import '../../models/Message.dart';

class Messagelistitem extends StatelessWidget {
  final Message message;
  const Messagelistitem({super.key,required this.message});
  @override
  Widget build(BuildContext context) {
    var a = Random();
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: CircleAvatar(
        radius: 24,
        backgroundImage: NetworkImage('https://picsum.photos/200?random=${a.nextInt(100)}'),
      ),
      title: Row(
        children: [
          Text(
            message.username,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          if (!message.isRead)
            Container(
              margin: EdgeInsets.only(left: 4),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            message.message,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 14,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          Text(
            message.time,
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 12,
            ),
          ),
        ],
      ),
      trailing:
      Image.asset("assets/images/camera_icon.png",height: 24,
          width: 22
      ),

      onTap: () {
        // Navigate to chat screen
      },
    );
  }
}