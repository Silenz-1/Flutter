// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';

Map<String, ButtonStyle> styles = {
  'signupButton': TextButton.styleFrom(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14)
    ),
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 20),
    backgroundColor: const Color.fromRGBO(19, 22, 221, 1)
  )
};
