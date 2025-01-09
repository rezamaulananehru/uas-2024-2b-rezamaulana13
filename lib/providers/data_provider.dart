import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  String _message = '';
  String get message => _message;

  String? _imageUrl;
  String? get imageUrl => _imageUrl;

  Future<void> loadMessage() async {
    final data = await rootBundle.loadString('models/datamessage.json');
    final jsonResult = json.decode(data);
    _message = jsonResult['message'];
    _imageUrl = jsonResult['imageUrl'];
    notifyListeners();
  }
}
