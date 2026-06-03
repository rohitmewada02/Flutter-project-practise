import 'package:flutter/material.dart';

class Loginn extends StatelessWidget {
  const Loginn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Login Page'),
        ),
      ),
      body: 
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 32.0,
        ),

        child: SingleChildScrollView(
          child: Column(
          children: [
            Image.asset(
              'assets/images/login_image.png',
              fit: BoxFit.scaleDown,
            ),

            const SizedBox(height: 20.0),

            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20.0),

            const TextField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15.0),

            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20.0),

            ElevatedButton(
              onPressed: () {
                debugPrint("Login Button Pressed");
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 12,
                ),
              ),
              child: const Text("Login"),
            ),
          ],
        ),
        ),
        
      ),
    );
  }
}