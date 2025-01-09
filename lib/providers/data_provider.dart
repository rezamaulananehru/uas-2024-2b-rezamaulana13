import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier {
  String _message = '';
  String _imageUrl = '';

  String get message => _message;
  String get imageUrl => _imageUrl;

  void loadMessage() {
    // Simulasi data dari JSON
    _message = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do";
    _imageUrl = "https://www.medcom.id/teknologi/news-teknologi/Wb7YB8PK-fotografer-dituntut-karena-foto-selfie-kera";
    notifyListeners();
  }
}
