import 'package:flutter/material.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Language"),
        centerTitle: true,
      ),
    );
  }
}
