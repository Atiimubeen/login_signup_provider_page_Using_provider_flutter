import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_provider.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              userProvider.logout();
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          "Welcome, ${userProvider.name ?? userProvider.email}!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
