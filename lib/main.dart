import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Import dengan alias
import 'package:uas_2024_2b_rezamaulana13/screens/profile_screen.dart' as profile;
import 'package:uas_2024_2b_rezamaulana13/screens/logout_screen.dart' as logout;
import 'package:uas_2024_2b_rezamaulana13/screens/notification_screen.dart' as notification;

import 'providers/data_provider.dart';
import 'providers/message_provider.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/home_screen.dart';
import 'screens/message_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DataProvider()..loadData()),
        ChangeNotifierProvider(create: (_) => MessageProvider()..fetchMessages()),
      ],
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
        initialRoute: '/welcome',
        routes: {
          '/welcome': (context) => WelcomeScreen(),
          '/signin': (context) => SignInScreen(),
          '/signup': (context) => SignUpScreen(),
          '/home': (context) => HomeScreen(),
          '/messages': (context) => MessageScreen(),
          '/profile': (context) => profile.ProfileScreen(), // Gunakan alias 'profile'
          '/logout': (context) => logout.LogoutScreen(),   // Gunakan alias 'logout'
          '/notification': (context) => notification.NotificationScreen(), // Gunakan alias 'notification'
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => SignInScreen(),
          );
        },
      ),
    );
  }
}
