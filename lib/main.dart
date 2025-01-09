import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/data_provider.dart';
import 'screens/sign_in_screen.dart'; // Import Halaman Sign In

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DataProvider()..loadMessage(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignInScreen(), // Ganti dengan halaman Sign In
      ),
    );
  }
}
