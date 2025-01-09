import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/message_provider.dart';
import 'providers/user_provider.dart';
import 'screens/sign_in_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MessageProvider()..loadMessage()),
        ChangeNotifierProvider(create: (_) => UserProvider()..loadUsers()),
      ],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        debugShowCheckedModeBanner: false,
        initialRoute: '/signin',
        routes: {
          '/signin': (context) => SignInScreen(),
          '/welcome': (context) => WelcomeScreen(),
        },
      ),
    );
  }
}
