import 'package:flutter/material.dart';
import '../../utils/styles/styles.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: styles["signupButton"],
      onPressed: () {},
      child: const Text(
        'SIGN UP',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      ),
    );
  }
}
