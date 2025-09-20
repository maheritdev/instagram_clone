import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/wedgets/notifications_widget.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return NotificationsWidget();
  }
}
