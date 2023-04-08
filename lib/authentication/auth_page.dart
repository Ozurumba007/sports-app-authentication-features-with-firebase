import 'package:flutter/material.dart';

import '../screens/login_screen.dart';
import '../screens/register_screen.dart';

class AuthPage extends StatefulWidget {
  AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  // initially show the login page
  bool showLoginScreen = true;
  @override
  Widget build(BuildContext context) {
    if (showLoginScreen) {
      return LoginScreen(showRegisterScreen: showRegisterScreen);
    } else {
      RegisterScreen();
    }
  }
}
