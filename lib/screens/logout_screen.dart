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
          // Foto Profil
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.person,
                size: 50,
                color: Colors.grey[700],
              ),
            ),
          ),
          SizedBox(height: 20),

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
                // Navigasi ke halaman Home dan hapus semua rute sebelumnya
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/home', // Rute ke halaman Home
                  (route) => false, // Hapus semua rute sebelumnya
                );
              },
              child: Text(
                'Log Out',
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
            ),
          ),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
        ],
        currentIndex: 2, // Profile selected by default
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          // Handle navigation here
        },
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
