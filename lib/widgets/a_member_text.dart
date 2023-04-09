import 'package:flutter/material.dart';

import '../screens/register_screen.dart';

class AMemberText extends StatelessWidget {
  const AMemberText({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final RegisterScreen widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'You are a Member?',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 10),
        GestureDetector(
          onTap: widget.showLoginScreen,
          child: Text(
            'Login now',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
