import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  String message = '';
  String imageUrl = '';

  Future<void> loadData() async {
    try {
      final String response = await rootBundle.loadString('assets/data/data_pesan.json');
      final Map<String, dynamic> data = jsonDecode(response);
      message = data['message'];
      imageUrl = data['imageUrl'];
      notifyListeners(); // Memberitahu widget yang bergantung bahwa data telah diperbarui
    } catch (e) {
      print('Error loading data: $e');
    }
  }
}
