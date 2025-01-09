import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/data_provider.dart';
import '../widgets/custom_image.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengakses DataProvider untuk mendapatkan data message dan imageUrl
    final dataProvider = Provider.of<DataProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Menampilkan gambar dari imageUrl menggunakan CustomImage
              CustomImage(imageUrl: dataProvider.imageUrl),
              SizedBox(height: 20),
              // Menampilkan pesan dari DataProvider
              Text(
                dataProvider.message,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              // Tombol navigasi ke SignInScreen dan SignUpScreen
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/signin'); // Navigasi ke SignInScreen
                    },
                    child: Text("Sign in"),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup'); // Navigasi ke SignUpScreen
                    },
                    child: Text("Sign up"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
