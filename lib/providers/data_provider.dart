import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  String _message = '';
  String get message => _message;

  Future<void> loadMessage() async {
    final data = await rootBundle.loadString('models/datamessage.json');
    final jsonResult = json.decode(data);
    _message = jsonResult['message'];
    notifyListeners();
  }
}
