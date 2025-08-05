import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  const CustomCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueAccent,
      child: ListTile(leading: Icon(icon,color: Colors.white,), title: Text(title,style: TextStyle(color: Colors.white),), onTap: onTap),
    );
  }
}
