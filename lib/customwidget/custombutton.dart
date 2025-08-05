import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String title;
  final VoidCallback onPressd;
  const Custombutton({super.key, required this.title, required this.onPressd});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressd,
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        child: Text(
          title,
          style: TextStyle(color: Color(0xFF1D4ED8), fontSize: 20),
        ),
      ),
    );
  }
}
