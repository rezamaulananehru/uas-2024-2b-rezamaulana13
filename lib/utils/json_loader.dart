import 'dart:convert'; // Untuk konversi dari string ke map
import 'package:flutter/services.dart'; // Untuk membaca file dari assets

class JsonLoader {
  /// Fungsi untuk memuat file JSON dari folder assets
  static Future<dynamic> loadJson(String path) async {
    try {
      // Membaca file JSON dari path yang diberikan
      final String response = await rootBundle.loadString(path);
      // Mengubah string JSON menjadi Map atau List
      return json.decode(response);
    } catch (e) {
      // Menangkap error jika file tidak ditemukan atau format salah
      print("Error loading JSON: $e");
      return null;
    }
  }
}
