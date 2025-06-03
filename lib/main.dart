import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_provider.dart';
import 'login_page.dart';
import 'signup_page.dart';
import 'main_page.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => UserProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Login Demo',
      debugShowCheckedModeBanner: false,
      home: Consumer<UserProvider>(
        builder: (context, userProvider, child) {
          return userProvider.isLoggedIn ? MainPage() : LoginPage();
        },
      ),
      routes: {
        '/login': (_) => LoginPage(),
        '/signup': (_) => SignupPage(),
        '/main': (_) => MainPage(),
      },
    );
  }
}
