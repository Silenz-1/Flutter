import 'package:flutter/material.dart';
import 'login.dart';






void main() {
    runApp( Myapp());
  }



class Myapp extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}