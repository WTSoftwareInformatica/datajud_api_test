import 'package:flutter/material.dart';

Widget customTextField(String labelText, TextEditingController controller) {
  return  TextField(
    readOnly: true,
    decoration: InputDecoration(
      labelText: labelText,
    ),
    controller: controller,
  );
}