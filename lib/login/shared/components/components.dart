
import 'package:flutter/material.dart';

Widget defaultTextFormField ({
  required TextEditingController controller,
  required TextInputType type,
  ValueChanged? onSubmit,
  ValueChanged? onChange,
  required FormFieldValidator? validate,
  required String label,
  required Icon prefixIcon,
  IconData? suffix,
   double radius = 25.0,
   bool obscure = false,
  VoidCallback? suffixPressed,

}) => TextFormField(
  controller: controller,
  obscureText: obscure,
  keyboardType: type,
  onChanged: onChange,
  onFieldSubmitted: onSubmit ,
  validator: validate,
  decoration: InputDecoration(
    labelText: label,
    prefixIcon: prefixIcon,
    suffixIcon:  suffix !=null ? IconButton(
      onPressed: suffixPressed,
      icon: Icon(
          suffix,
      ),

    )   : null,


    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
    ),

  ),

);

Widget defaultText ({
  required String text,
  FontWeight weight = FontWeight.bold,
  required double size,
  required Color color,


}) => Text(
text,
style: TextStyle(
fontWeight: weight,
fontSize: size,
color: color,

),
);