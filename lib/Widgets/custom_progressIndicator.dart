import 'package:flutter/material.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: (MediaQuery.sizeOf(context).height / 5) * 3,
          child: const Center(child: CircularProgressIndicator()));
  }
}
