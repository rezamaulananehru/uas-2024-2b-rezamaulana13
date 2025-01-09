//import 'dart:convert';
import 'package:flutter/material.dart';
import '../assets/data/data_user.dart'; // Pastikan import benar
import '../utils/json_loader.dart';

class UserProvider with ChangeNotifier {
  List<UserModel> _users = [];

  List<UserModel> get users => _users;

  Future<void> loadUsers() async {
    final data = await JsonLoader.loadJson('assets/data/datauser.json');
    _users = (data['users'] as List)
        .map((userJson) => UserModel.fromJson(userJson))
        .toList();
    notifyListeners();
  }
}
