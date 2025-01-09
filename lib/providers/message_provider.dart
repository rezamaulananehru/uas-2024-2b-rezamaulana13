import 'package:flutter/material.dart';
import '../assets/data/data_pesan.dart'; // Pastikan ada model Message
import '../services/data_service.dart'; // Pastikan ada layanan DataService

class MessageProvider with ChangeNotifier {
  List<Message> _messages = [];
  bool _isLoading = false;
  String? _error;

  List<Message> get messages => _messages;
  bool get isLoading => _isLoading;
  String? get error => _error;

  /// Fetch messages from JSON
  Future<void> fetchMessages() async {
    _isLoading = true;
    notifyListeners();

    try {
      final List<Message> fetchedMessages = await DataService.loadMessages();
      _messages = fetchedMessages;
      _error = null; // Clear error if successful
    } catch (e) {
      _error = "Failed to load messages: $e";
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
