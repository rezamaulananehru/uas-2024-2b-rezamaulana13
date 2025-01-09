import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

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

              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Aksi untuk "Forgot Password"
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Forgot Password clicked')),
                    );
                  },
                  child: Text('Forgot Password?'),
                ),
              ),

              SizedBox(height: 20),

              // Sign In Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Proses sign in
                    String email = emailController.text;
                    String password = passwordController.text;

                    if (email.isEmpty || password.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Email and Password are required')),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Logged in as $email')),
                      );
                      // Navigasi ke HomeScreen
                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                    }
                  },
                  child: Text('Sign In'),
                ),
              ),

              SizedBox(height: 20),

              // Sign in with Google or Facebook
              Center(
                child: Column(
                  children: [
                    Text('or sign in with'),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.g_mobiledata, size: 36),
                          onPressed: () {
                            // Aksi login dengan Google
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Sign in with Google')),
                            );
                          },
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          icon: Icon(Icons.facebook, size: 36, color: Colors.blue),
                          onPressed: () {
                            // Aksi login dengan Facebook
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Sign in with Facebook')),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              // Sign Up Now Link
              Center(
                child: GestureDetector(
                  onTap: () {
                    // Navigasi ke SignUpScreen
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Navigate to Sign Up')),
                    );
                  },
                  child: Text(
                    "Don't have an account? Sign Up Now",
                    style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
