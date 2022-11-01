// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';

class PasswordFields extends StatefulWidget {
  const PasswordFields({super.key});

  @override
  State<PasswordFields> createState() => _PasswordFieldsState();
}

class _PasswordFieldsState extends State<PasswordFields> {
  late bool _viewPassword_1= true;
  late bool _viewPassword_2= true;
  

  void TogglePassword_1() {
    setState(() {
      _viewPassword_1 = !_viewPassword_1;
    });
  }

  void TogglePassword_2() {
    setState(() {
      _viewPassword_2 = !_viewPassword_2;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Password field
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color.fromARGB(255, 228, 221, 221)),
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextField(
              obscureText: _viewPassword_1,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: TogglePassword_1,
                  child: Icon(
                    _viewPassword_1 ? Icons.visibility : Icons.visibility_off
                  ),
                ),
                border: InputBorder.none,
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Color.fromRGBO(19, 22, 221, 1),
                ),
                hintText: 'Password', 
                hintStyle: const TextStyle(fontWeight: FontWeight.w500)
              ),
            ),
          ),
        ),

        const SizedBox(height: 20),
        //Confirm Password Field
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color.fromARGB(255, 228, 221, 221)), 
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextField(
              obscureText: _viewPassword_2,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                  onTap: TogglePassword_2,
                  child: Icon(
                    _viewPassword_2 ? Icons.visibility : Icons.visibility_off, 
                  ),
                ),
                border: InputBorder.none,
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Color.fromRGBO(19, 22, 221, 1),
                ),
                hintText: 'Confirm password', 
                hintStyle: const TextStyle(fontWeight: FontWeight.w500)
              ),
            ),
          ),
        ),
      ],
    );
  }
}
