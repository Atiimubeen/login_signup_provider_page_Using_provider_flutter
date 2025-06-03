import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_provider.dart';

class LoginPage extends StatelessWidget {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String email = emailController.text;
                if (email.isNotEmpty) {
                  Provider.of<UserProvider>(
                    context,
                    listen: false,
                  ).login(email);
                }
              },
              child: Text("Login"),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/signup'),
              child: Text("Go to Signup"),
            ),
          ],
        ),
      ),
    );
  }
}
