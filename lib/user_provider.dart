import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String? name;
  String? email;
  bool isLoggedIn = false;

  void login(String emailInput) {
    email = emailInput;
    isLoggedIn = true;
    notifyListeners();
  }

  void signup(String nameInput, String emailInput) {
    name = nameInput;
    email = emailInput;
    isLoggedIn = true;
    notifyListeners();
  }

  void logout() {
    name = null;
    email = null;
    isLoggedIn = false;
    notifyListeners();
  }
}
