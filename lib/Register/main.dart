// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: RegisterForm());
  }
}

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late bool _viewPassword = true;
     void TogglePassword() {
    setState(() {
      _viewPassword = !_viewPassword;
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text(
                'Register Form',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 250.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.blue,
                        ),
                        hintText: 'First name'
                      ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 250.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.blue,
                      ),
                      hintText: 'Last name'
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 250.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  child: const TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.blue,
                        ),
                        hintText: 'Email'),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 250.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    obscureText: _viewPassword,
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: TogglePassword,
                        child: Icon(
                            _viewPassword 
                          ? Icons.visibility 
                          : Icons.visibility_off
                        ),
                      ),
                      border: InputBorder.none,
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.blue,
                      ),
                      hintText: 'Password'
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 250.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    obscureText: _viewPassword,
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: TogglePassword,
                        child: Icon(
                            _viewPassword 
                          ? Icons.visibility 
                          : Icons.visibility_off
                        ),
                      ),
                      border: InputBorder.none,
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.blue,
                      ),
                      hintText: 'Confirm password'
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      )
    );
  }
}



// Scaffold(
//         backgroundColor: Colors.cyan,
//         body: SafeArea(
//           child: Container(
//             color: Colors.white,
//             height: 200,
//             width: 200,
//             margin: const EdgeInsets.symmetric(),
//             alignment: Alignment.center,
//             child: const Text('Hello world'),
//           ),
//         ),
//       ),