import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
         Text('Already have an account?  '), 
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child:  Text('Login', 
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              color: Color.fromRGBO(19, 22, 221, 1)
            ),
          ),
        )
      ],
    );
  }
}
