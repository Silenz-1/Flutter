// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project/login/login.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have an account? '),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const LoginForm();
                  }
                )
              );
            },
            
            child: Text(
              'Login',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(19, 22, 221, 1)
              ),
            )
          ),
        )
      ],
    );
  }
}