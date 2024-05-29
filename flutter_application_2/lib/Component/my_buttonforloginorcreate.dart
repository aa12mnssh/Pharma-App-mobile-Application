import 'package:flutter/material.dart';

class loginorcreateButton extends StatelessWidget {
  const loginorcreateButton({super.key, required this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color.fromARGB(231, 244, 245, 247),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'Create Account',
            style: TextStyle(
              color: Color.fromARGB(194, 38, 38, 39),
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
