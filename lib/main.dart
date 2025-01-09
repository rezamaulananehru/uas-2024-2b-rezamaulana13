import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/data_provider.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/home_screen.dart';
import 'screens/welcome_screen.dart'; // Tambahkan WelcomeScreen jika ada

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DataProvider()..loadData(), // Memuat data saat aplikasi dijalankan
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          textTheme: TextTheme(
            bodyLarge: TextStyle(fontSize: 16.0, color: Colors.black),
            labelLarge: TextStyle(fontSize: 14.0, color: Colors.grey[700]),
          ),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/signin', // Ganti ke '/welcome' jika ada Welcome Screen
        routes: {
          '/welcome': (context) => WelcomeScreen(), // Jika menggunakan WelcomeScreen
          '/signin': (context) => SignInScreen(),
          '/signup': (context) => SignUpScreen(),
          '/home': (context) => HomeScreen(),
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => SignInScreen(), // Default fallback ke SignInScreen
          );
        },
      ),
    );
  }
}
