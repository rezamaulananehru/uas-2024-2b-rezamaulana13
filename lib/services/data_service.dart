import 'dart:convert';
import 'package:flutter/services.dart';
import '../assets/data/data_pesan.dart';
import '../assets/data/data_user.dart';

class DataService {
  // Load messages from JSON file
  static Future<List<Message>> loadMessages() async {
    final String data = await rootBundle.loadString('assets/data/datamessage.json');
    final List<dynamic> json = jsonDecode(data);
    return json.map((e) => Message.fromJson(e)).toList();
  }

  // Load users from JSON file
  static Future<List<UserModel>> loadUsers() async {
    final String data = await rootBundle.loadString('assets/data/datauser.json');
    final List<dynamic> json = jsonDecode(data);
    return json.map((e) => UserModel.fromJson(e)).toList();
  }
}
