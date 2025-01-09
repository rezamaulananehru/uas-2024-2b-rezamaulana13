import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/message_provider.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final messageProvider = Provider.of<MessageProvider>(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  messageProvider.message?.welcomeMessage ?? 'Loading...',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.grey[300], // Placeholder for image
                  child: Center(child: Text('Image Placeholder')),
                ),
                SizedBox(height: 20),
                Text(
                  messageProvider.message?.subtitle ?? 'Loading...',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  messageProvider.message?.description ?? 'Loading...',
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                ),
                // Add categories and top courses here as per wireframe...
              ],
            ),
          ),
        ),
      ),
    );
  }
}
