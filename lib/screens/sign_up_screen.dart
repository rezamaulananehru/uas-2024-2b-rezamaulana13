import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/data_provider.dart'; // Import DataProvider

class SignUpScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Akses DataProvider untuk mendapatkan data message
    final dataProvider = Provider.of<DataProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create an Account',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              // Menampilkan message dari DataProvider
              Text(
                dataProvider.message,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 20),

              // Field Name
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),

              // Field Email
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 10),

              // Field Password
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),

              // Sign Up Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Proses sign up
                    String name = nameController.text;
                    String email = emailController.text;
                    String password = passwordController.text;

                    if (name.isEmpty || email.isEmpty || password.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('All fields are required')),
                      );
                    } else {
                      // Tampilkan pesan sukses dan navigasi ke HomeScreen
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Account created for $name')),
                      );
                      Navigator.pushReplacementNamed(context, '/home');
                    }
                  },
                  child: Text('Sign Up'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
