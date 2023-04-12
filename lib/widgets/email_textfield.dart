import 'package:flutter/material.dart';

class EmailTextfield extends StatelessWidget {
  final String text;
  const EmailTextfield({
    Key? key,
    required this.text,
    required TextEditingController emailController,
  })  : _emailController = emailController,
        super(key: key);

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              hintText: text,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
