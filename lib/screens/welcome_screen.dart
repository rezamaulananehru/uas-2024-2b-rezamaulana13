import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Gambar Welcome (Opsional)
            Center(
              child: Image.asset(
                'assets/images/welcome_image.png', // Ganti dengan asset Anda
                height: 200,
              ),
            ),
            SizedBox(height: 30),

            // Text Welcome
            Text(
              'Welcome to MyApp',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Your journey to learn starts here!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 40),

            // Tombol Sign In
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signin'); // Ganti dengan route Sign In
              },
              child: Text('Sign In'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 10),

            // Tombol Sign Up
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup'); // Ganti dengan route Sign Up
              },
              child: Text('Sign Up'),
              style: OutlinedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
