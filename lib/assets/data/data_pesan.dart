class Message {
  final String senderName;
  final String content;
  final String time;

  Message({
    required this.senderName,
    required this.content,
    required this.time,
  });

  /// Konversi dari JSON ke Message
  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      senderName: json['senderName'] ?? '',
      content: json['content'] ?? '',
      time: json['time'] ?? '',
    );
  }

  /// Konversi dari Message ke JSON (opsional, jika diperlukan)
  Map<String, dynamic> toJson() {
    return {
      'senderName': senderName,
      'content': content,
      'time': time,
    };
  }
}
