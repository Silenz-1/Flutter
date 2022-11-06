// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utils/components/widgets.dart';
import '../Register/register.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var formkey = GlobalKey<FormState>();
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 1),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0.0,
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 50.0,
          ),
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 120.0,
                  child: Image(
                    image: NetworkImage(
                      'https://raw.githubusercontent.com/gamzegurcan/Flutter-Login-Register-UI/master/asset/images/loginill.png'
                    )
                  ),
                ),

                SizedBox(height: 20.0),

                defaultText(
                  text: 'LOGIN',
                  size: 35.0,
                  color: Colors.black,
                ),

               SizedBox(height: 20.0),
               
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 20.0,
                    end: 20.0,
                  ),
                  child: defaultTextFormField(
                    validate: (value) {
                      if (value.isEmpty) {
                        return 'Email must not be empty';
                      }
                      return null;
                    },
                    controller: emailController,
                    label: 'Email',
                    type: TextInputType.emailAddress,
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color.fromRGBO(19, 21, 221, 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                    padding: const EdgeInsetsDirectional.only(
                      start: 20.0,
                      end: 20.0,
                    ),
                    child: defaultTextFormField(
                      obscure: passwordVisible,
                      type: TextInputType.visiblePassword,
                      validate: (value) {
                        if (value.isEmpty) {
                          return 'Password must not be empty';
                        }
                        return null;
                      },
                      controller: passwordController,
                      label: 'Password',
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color.fromRGBO(19, 21, 221, 1),
                      ),
                      suffix: passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      suffixPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 20.0,
                  ),
                  child: Row(
                    children: [
                      Switch.adaptive(
                        value: true,
                        onChanged: (bool position) {
                          print('Tapped $position');
                        },
                        thumbColor: MaterialStateProperty.all(
                          Color.fromRGBO(255, 255, 255, 1),
                        ),
                        trackColor: MaterialStateProperty.all(
                          Color.fromRGBO(19, 22, 221, 1),
                        ),
                      ),
                      defaultText(
                        text: 'Remember Me',
                        size: 15.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      TextButton(
                          onPressed: () {
                            print('Hel');
                          },
                          child: defaultText(
                            text: 'Forget Password ?',
                            size: 13.0,
                            color: Color.fromRGBO(19, 22, 221, 1),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  height: 70.0,
                  width: 250,
                  child: Material(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    clipBehavior: Clip.antiAlias,
                    child: MaterialButton(
                        clipBehavior: Clip.antiAlias,
                        color: Color.fromRGBO(19, 22, 221, 1),
                        onPressed: () {
                          if (formkey.currentState!.validate())
                            print(emailController.text);
                          print(passwordController.text);
                        },
                        child: defaultText(
                          text: 'LOGIN',
                          size: 20.0,
                          color: Colors.white,
                        )),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                defaultText(
                  text: 'OR',
                  size: 20.0,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 15.0,
                ),
                defaultText(
                  text: 'Log in with',
                  size: 20.0,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 80.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          print('Mosha');
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.facebook,
                          size: 35.0,
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      IconButton(
                        onPressed: () {
                          print('Mosha');
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.google,
                          size: 35.0,
                        ),
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      IconButton(
                        onPressed: () {
                          print('Mosha');
                        },
                        icon: FaIcon(
                          FontAwesomeIcons.apple,
                          size: 35.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 65.0,
                  ),
                  child: Row(
                    children: [
                      defaultText(
                        text: 'Don\'t have an account ?',
                        size: 13.0,
                        color: Colors.black,
                      ),
                      TextButton(
                        onPressed: () {                         
                          Navigator.of(context).push(
                            MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const RegisterForm();
                              }
                            )
                          );
                        },
                        child: defaultText(
                          text: 'Register Now',
                          size: 13.0,
                          color: Color.fromRGBO(19, 21, 221, 1)
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
