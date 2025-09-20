import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/wedgets/message_list_item.dart';

import '../models/Message.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  final List<Message> messages = [
    Message(
      username: 'joshua_1',
      message: 'Have a nice day, bro!',
      time: 'now',
      isRead: true,
    ),
    Message(
      username: 'kareeme',
      message: 'I heard this is a good movie, s...',
      time: 'now',
      isRead: true,
    ),
    Message(
      username: 'martini_rond',
      message: 'See you on the next meeting!',
      time: '15m',
      isRead: false,
    ),
    Message(
      username: 'andrewww.',
      message: 'Sounds good',
      time: '20m',
      isRead: true,
    ),
    Message(
      username: 'kiero_d',
      message: 'The new design looks cool, b...',
      time: '1m',
      isRead: false,
    ),
    Message(
      username: 'magiscobson',
      message: 'Thank you, bro!',
      time: '2h',
      isRead: true,
    ),
    Message(
      username: 'jamie.franco',
      message: 'Yeap, I\'m going to travel in To...',
      time: '4h',
      isRead: false,
    ),
    Message(
      username: 'm_humphrey',
      message: 'Instagram UI is pretty good',
      time: '5h',
      isRead: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'jacob_w',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: Colors.black, size: 24),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: 'Search',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
          ),
          // Messages list
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return Messagelistitem(message: message);
              },
            ),
          ),
          // Camera button at bottom
          Container(
            height: 60,
            color: Colors.white,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.camera_alt, color: Colors.black, size: 28),
                    onPressed: () {
                      // Open camera functionality
                    },
                  ),Text(
                    "Camera",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }
}