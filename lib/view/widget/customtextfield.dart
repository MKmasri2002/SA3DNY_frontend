import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  final bool obscure;
  final String label;
  final TextEditingController controller;
  final Icon icon;
  const Customtextfield({
    super.key,
    required this.obscure,
    required this.label,
    required this.controller,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: icon,
          prefixIconColor: Theme.of(context).primaryColor,
          hintText: label,
          hintStyle: TextStyle(color: Colors.grey),
          fillColor: const Color.fromARGB(255, 199, 195, 195),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 255, 255, 255),
              width: 2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 1.5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
        obscureText: obscure,
      ),
    );
  }
}
