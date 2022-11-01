// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:project/Register/utils/register.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: RegisterForm()
    );
  }
}