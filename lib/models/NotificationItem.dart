import 'package:flutter/material.dart';

class NotificationItem {
  final NotificationType type;
  final String title;
  final String time;
  final IconData icon;
  final bool showArrow;
  final bool showGender;
  final int? likes;
  final bool showMessageButton;
  final bool showFollowButton;
  final String userImage;

  NotificationItem({
    required this.type,
    required this.title,
    required this.time,
    required this.icon,
    this.showArrow = false,
    this.showGender = false,
    this.likes,
    this.showMessageButton = false,
    this.showFollowButton = false,
    required this.userImage,
  });
}

enum NotificationType {
  like,
  likeMultiple,
  mention,
  follow,
  header,
}