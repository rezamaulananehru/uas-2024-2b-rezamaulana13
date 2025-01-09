//import 'dart:convert';
import 'package:flutter/material.dart';
import '../assets/data/data_pesan.dart';
import '../utils/json_loader.dart';

class MessageProvider with ChangeNotifier {
  MessageModel? _message;

  MessageModel? get message => _message;

  Future<void> loadMessage() async {
    final data = await JsonLoader.loadJson('assets/data/datamessage.json');
    _message = MessageModel.fromJson(data);
    notifyListeners();
  }
}
