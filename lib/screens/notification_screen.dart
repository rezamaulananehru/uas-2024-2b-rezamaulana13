import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Aksi untuk notifikasi
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: 10, // Jumlah notifikasi
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 10.0),
            child: ListTile(
              leading: Icon(Icons.notifications, color: Colors.blue),
              title: Text('Notification Title $index'),
              subtitle: Text('This is the detail of notification $index.'),
              onTap: () {
                // Aksi saat notifikasi di-tap
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
        currentIndex: 0, // Indeks tab yang aktif
        onTap: (index) {
          // Navigasi ke tab lain
        },
      ),
    );
  }
}
