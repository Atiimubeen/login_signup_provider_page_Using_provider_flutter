import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_provider.dart';

class SignupPage extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Signup")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String name = nameController.text;
                String email = emailController.text;
                if (name.isNotEmpty && email.isNotEmpty) {
                  Provider.of<UserProvider>(
                    context,
                    listen: false,
                  ).signup(name, email);
                  Navigator.pushReplacementNamed(context, '/main');
                }
              },
              child: Text("Signup"),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/login'),
              child: Text("Go to Login"),
            ),
          ],
        ),
      ),
    );
  }
}
