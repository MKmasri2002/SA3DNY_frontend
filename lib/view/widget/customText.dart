import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight? weight;

  const CustomText({super.key, required this.text, required this.size, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: size,
      fontWeight: weight ?? FontWeight.normal,
      color: Theme.of(context).primaryColor, 
    ),);
  }
}
