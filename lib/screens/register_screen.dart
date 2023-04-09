// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sports_app/widgets/drop_menu.dart';

import '../widgets/a_member_text.dart';
import '../widgets/confirm_password_textfield.dart';
import '../widgets/email_textfield.dart';
import '../widgets/password_textfield.dart';

class RegisterScreen extends StatefulWidget {
  final VoidCallback showLoginScreen;
  const RegisterScreen({
    Key? key,
    required this.showLoginScreen,
  }) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmpasswordController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmpasswordController.dispose();
    _lastNameController.dispose();

    super.dispose();
  }

  Future signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    }
  }

  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmpasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo

                SizedBox(height: 10),
                Icon(
                  Icons.sports_basketball,
                  size: 100,
                ),

                // Hi there
                SizedBox(height: 30),
                Text(
                  'Hi There',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 45,
                  ),
                ),

                // Register Below with your Detail

                SizedBox(height: 10),
                Text(
                  'Register Below with your Detail',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                // email textfield

                SizedBox(height: 20),
                EmailTextfield(
                  emailController: _emailController,
                ),

                // password textfield

                SizedBox(height: 10),
                PasswordTextfield(
                  passwordController: _passwordController,
                ),

                // confirm password textfield

                SizedBox(height: 10),
                ConfirmPasswordTextfield(
                  confirmpasswordController: _confirmpasswordController,
                ),

                // DropDown menu for the special interest of the users
                SizedBox(height: 10),

                DropDownMenu(),
                // sign Up button

                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: GestureDetector(
                    onTap: signUp,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // you're a member? Login

                SizedBox(height: 10),

                AMemberText(widget: widget)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
