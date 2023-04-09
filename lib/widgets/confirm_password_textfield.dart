import 'package:flutter/material.dart';

class ConfirmPasswordTextfield extends StatelessWidget {
  const ConfirmPasswordTextfield({
    Key? key,
    required TextEditingController confirmpasswordController,
  })  : _confirmpasswordController = confirmpasswordController,
        super(key: key);

  final TextEditingController _confirmpasswordController;

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
            controller: _confirmpasswordController,
            decoration: InputDecoration(
              hintText: 'Confirm Password',
              border: InputBorder.none,
            ),
            obscureText: true,
          ),
        ),
      ),
    );
  }
}
