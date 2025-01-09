import 'package:flutter/material.dart';

class Message {
  final String senderName;
  final String content;
  final String time;

  Message({required this.senderName, required this.content, required this.time});
}

class MessageProvider with ChangeNotifier {
  List<Message> _messages = [];
  String? _error;
  bool _isLoading = false;

  List<Message> get messages => _messages;
  String? get error => _error;
  bool get isLoading => _isLoading;

  // Fungsi untuk mengambil data pesan
  Future<void> fetchMessages() async {
    _isLoading = true;
    notifyListeners();

    try {
      // Simulasi delay untuk mengambil data pesan (misalnya API)
      await Future.delayed(Duration(seconds: 2));

      // Data pesan contoh
      _messages = [
        Message(senderName: 'Alice', content: 'Hey, how are you?', time: '10:30 AM'),
        Message(senderName: 'Bob', content: 'Meeting at 3 PM?', time: '9:00 AM'),
      ];

      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = 'Failed to load messages';
      _isLoading = false;
      notifyListeners();
    }
  }
}
