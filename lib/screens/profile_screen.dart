import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Section 1: Video Preferences
          _buildSectionTitle('Video preference'),
          _buildListTile('Download Option', Icons.arrow_forward_ios, () {}),
          _buildListTile('Video playback options', Icons.arrow_forward_ios, () {}),
          SizedBox(height: 20),

          // Section 2: Account Settings
          _buildSectionTitle('Account Settings'),
          _buildListTile('Account Security', Icons.arrow_forward_ios, () {}),
          _buildListTile('Email Notification Preferences', Icons.arrow_forward_ios, () {}),
          _buildListTile('Learning Reminders', Icons.arrow_forward_ios, () {}),
          SizedBox(height: 20),

          // Section 3: About Learnout
          _buildSectionTitle('About Learnout'),
          _buildListTile('Frequently Asked Questions', Icons.arrow_forward_ios, () {}),
          _buildListTile('Share the Learnout App', Icons.arrow_forward_ios, () {}),

          SizedBox(height: 30),

          // Log Out Button
          Center(
  child: TextButton(
    onPressed: () {
      Navigator.pushNamed(context, '/logout');
    },
    child: Text(
      'Log Out',
      style: TextStyle(color: Colors.red, fontSize: 16),
    ),
  ),
),

        ],
      ),
    );
  }

  // Helper method untuk membuat judul setiap bagian
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Helper method untuk membuat ListTile
  Widget _buildListTile(String title, IconData trailingIcon, VoidCallback onTap) {
    return ListTile(
      title: Text(title),
      trailing: Icon(trailingIcon, size: 16),
      onTap: onTap,
    );
  }
}
