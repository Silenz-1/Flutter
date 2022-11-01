import 'package:flutter/material.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
        textStyle: const TextStyle(
          fontSize: 15, 
          fontWeight: FontWeight.w400
        ),
        backgroundColor: const Color.fromRGBO(19, 22, 221, 1)
      ),
      onPressed: () {},
      child: const Text('SIGN UP'),
    );
  }
}
