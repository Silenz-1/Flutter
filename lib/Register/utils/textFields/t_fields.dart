import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //First Name field
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 250.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color.fromARGB(255, 228, 221, 221)),
              borderRadius: BorderRadius.circular(10)
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.person,
                  color: Color.fromRGBO(19, 22, 221, 1),
                ),
                hintText: 'First name', 
                hintStyle: TextStyle(fontWeight: FontWeight.w500)
              ),
            ),
          ),
        ),

        const SizedBox(height: 20),
        //Last Name Field
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 250.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color.fromARGB(255, 228, 221, 221)),
              borderRadius: BorderRadius.circular(10)
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.person,
                  color: Color.fromRGBO(19, 22, 221, 1),
                ),
                hintText: 'Last name',
                hintStyle: TextStyle(fontWeight: FontWeight.w500)
              ),
            ),
          ),
        ),

        const SizedBox(height: 20),
        //Email Field
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 250.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: const Color.fromARGB(255, 228, 221, 221)),
              borderRadius: BorderRadius.circular(10)
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.email,
                  color: Color.fromRGBO(19, 22, 221, 1),
                ),
                hintText: 'Email', 
                hintStyle: TextStyle(fontWeight: FontWeight.w500)
              ),
            ),
          ),
        ),
      ],
    );
  }
}
