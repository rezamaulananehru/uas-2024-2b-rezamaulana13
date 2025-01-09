import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });

  // Jika ikon 'Messages' dipilih (indeks ke-4)
  if (_selectedIndex == 4) {
    Navigator.pushNamed(context, '/messages'); // Navigasi ke MessageScreen
  }
}


  // Fungsi untuk navigasi ke halaman pesan (misalnya)
  void _navigateToMessages() {
    print("Messages icon tapped");
    // Jika Anda punya halaman pesan, ganti ini dengan navigasi ke halaman tersebut
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(builder: (context) => MessagesScreen()),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header: Welcome Text
                Text(
                  'Welcome William',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),

                // Gambar Welcome
                Center(
                  child: Image.asset(
                    'assets/images/welcome_image.png', // Ganti dengan path gambar Anda
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),

                // Subtitle
                Text(
                  'Keep Moving Up',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do',
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
                SizedBox(height: 20),

                // Categories Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('See All'),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    _buildCategoryChip('Development'),
                    _buildCategoryChip('IT & Software'),
                    _buildCategoryChip('UI/UX'),
                    _buildCategoryChip('Business'),
                    _buildCategoryChip('Finance & Business'),
                    _buildCategoryChip('Perks'),
                  ],
                ),
                SizedBox(height: 20),

                // Top Courses Section
                Text(
                  'Top Courses',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildCourseImage('assets/images/course1.png'),
                    _buildCourseImage('assets/images/course2.png'),
                    _buildCourseImage('assets/images/course3.png'),
                    _buildCourseImage('assets/images/course4.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  // Helper method untuk kategori
  Widget _buildCategoryChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.blue[50],
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    );
  }

  // Helper method untuk placeholder kursus
  Widget _buildCourseImage(String imagePath) {
    return Container(
      width: 70,
      height: 90,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey[300],
      ),
    );
  }
}
