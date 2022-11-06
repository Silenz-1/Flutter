import 'package:flutter/material.dart';
import 'package:project/Register/buttons/login.dart';
import 'package:project/Register/buttons/signup.dart';
import '../utils/components/widgets.dart';


class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late bool _viewPassword_1= true;
  late bool _viewPassword_2= true;

  void togglePassword() {
    setState(() {
      _viewPassword_1 = !_viewPassword_1;
    });
  }

  void toggleConfirmPassword() {
    setState(() {
     _viewPassword_2= !_viewPassword_2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                              
                //First Name field
                defaultContainer(
                  text: 'First name',
                  icon: Icons.person
                ),

                const SizedBox(height: 20),

                //Last Name Field
                defaultContainer(
                  text: 'Last name',
                  icon: Icons.person
                ),

                const SizedBox(height: 20),

                //Email Field
                defaultContainer(
                  text: 'Email',
                  icon: Icons.email
                ),
            
                const SizedBox(height: 20),
            
               //Password field
                defaultContainer(
                  text: 'Password',
                  icon: Icons.lock,
                  ontap: togglePassword,
                  entery: _viewPassword_1
                ),

                const SizedBox(height: 20),

                //Confirm Password Field
                defaultContainer(
                  text: 'Confirm password',
                  icon: Icons.lock,
                  ontap: toggleConfirmPassword,
                  entery: _viewPassword_2
                ),
                const SizedBox(height: 20),

                const SignupButton(),

                const SizedBox(height: 20),

                const LoginButton()
              ],
            ),
          ),
        )
      )
    );
  }
}