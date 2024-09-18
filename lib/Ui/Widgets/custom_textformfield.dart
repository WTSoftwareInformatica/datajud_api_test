import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String text;
  const CustomTextFormField({super.key, required this.label, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      decoration: InputDecoration(
        labelText: label,
      ),
      initialValue: text,

    );
  }
}
