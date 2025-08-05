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
    return SizedBox(
      height: 40,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: icon,
          prefixIconColor: Theme.of(context).primaryColor,
          hintText: label,
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 4),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
        obscureText: obscure,
      ),
    );
  }
}
