class ChatBotModel {
  final String model;
  final DateTime createdAt;
  final String response;
  final bool done;

  ChatBotModel({
    required this.model,
    required this.createdAt,
    required this.response,
    required this.done,
  });

  factory ChatBotModel.fromJson(Map<String, dynamic> json) {
    return ChatBotModel(
      model: json['model'],
      createdAt: DateTime.parse(json['created_at']),
      response: json['response'],
      done: json['done'],
    );
  }
}
