import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
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

                // Welcome BAck text

                SizedBox(height: 40),
                Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),

                // email textfield

                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),

                // password textfield

                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                        ),
                        obscureText: true,
                      ),
                    ),
                  ),
                ),

                // sign in button

                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                  ),
                  child: GestureDetector(
                    onTap: signIn,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Sign In',
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

                // not a member? register now

                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a Member?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: widget.showRegisterScreen,
                      child: Text(
                        'Register now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
