import 'package:flutter/material.dart';


Widget defaultContainer({
  required String text,
  required IconData icon,
  void Function()? ontap,
  bool? entery 
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 250),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color.fromARGB(255, 228, 221, 221)),
        borderRadius: BorderRadius.circular(10)
      ),
      child: TextField(
        obscureText: entery ?? false,
        decoration: InputDecoration(
          suffixIcon: entery != null
            ? InkWell(
                onTap: ontap,
                child: Icon(
                  entery ? Icons.visibility : Icons.visibility_off
                ),
              )
            : null,
          border: InputBorder.none,
          hintText: text,
          hintStyle: const TextStyle(fontWeight: FontWeight.w500),
          prefixIcon: Icon(
            icon,
            color: const Color.fromRGBO(19, 22, 221, 1),
          ),
        ),
      ),
    )
  );
}
