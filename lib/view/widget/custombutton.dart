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
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
