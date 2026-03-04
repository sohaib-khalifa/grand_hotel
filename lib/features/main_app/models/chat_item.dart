class ChatItem {
  final String name;
  final String message;
  final String time;
  final int unread;
  final String avatar;

  const ChatItem({
    required this.name,
    required this.message,
    required this.time,
    required this.unread,
    required this.avatar,
  });
}
