class MessageModel {
  final String welcomeMessage;
  final String subtitle;
  final String description;

  MessageModel({
    required this.welcomeMessage,
    required this.subtitle,
    required this.description,
  });

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return MessageModel(
      welcomeMessage: json['welcomeMessage'],
      subtitle: json['subtitle'],
      description: json['description'],
    );
  }
}
