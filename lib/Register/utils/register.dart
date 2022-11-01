import 'package:flutter/material.dart';
import 'package:project/Register/utils/buttons/login.dart';
import 'package:project/Register/utils/passwordFields/p_fields.dart';
import 'package:project/Register/utils/textFields/t_fields.dart';
import 'package:project/Register/utils/buttons/signup.dart';


class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                Text('SIGN UP', 
                  style: TextStyle(
                    fontSize: 28, 
                    fontWeight: FontWeight.bold
                  ),
                ),
            
                SizedBox(height: 24), 
                
                TextFields(),
            
                  SizedBox(height: 20),
            
                PasswordFields(),
            
                  SizedBox(height: 20),
            
                SignupButton(),
            
                  SizedBox(height: 20),
            
                LoginButton()
              ],
            ),
          ),
        )
      )
    );
  }
}