import 'package:flutter/material.dart';
Widget defaultTextFormField({
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

}) { 
  return TextFormField(
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
}

Widget defaultText({
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
