class Message {
  final String username;
  final String message;
  final String time;
  final bool isRead;

  Message({
    required this.username,
    required this.message,
    required this.time,
    this.isRead = false,
  });
}