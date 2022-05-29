class ChatLog {
  static List<Chat> items = [];
}

class Chat {
  final String name;
  final String imgUrl;
  final String lastChat;
  final bool islastChatSeen;
  final bool isMuted;
  final String lastSeen;

  Chat(
      {required this.name,
      required this.imgUrl,
      required this.lastChat,
      required this.islastChatSeen,
      required this.isMuted,
      required this.lastSeen});

  factory Chat.fromMap(Map<String, dynamic> mp) {
    return Chat(
        name: mp['name'],
        imgUrl: mp['imgUrl'],
        lastChat: mp['lastChat'],
        islastChatSeen: mp['islastChatSeen'],
        isMuted: mp['isMuted'],
        lastSeen: mp['lastSeen']);
  }
  toMap() => {
        'name': name,
        'imgUrl': imgUrl,
        'lastChat': lastChat,
        'islastChatSeen': islastChatSeen,
        'isMuted': isMuted,
        'lastSeen': lastSeen
      };
}
