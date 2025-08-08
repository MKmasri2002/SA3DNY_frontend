import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback? onOk;

  const CustomAlertDialog({
    Key? key,
    required this.title,
    required this.content,
    this.onOk,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      title: Row(
        children: [
          Icon(Icons.warning_amber_rounded, color: Theme.of(context).primaryColor, size: 30),
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
          ),
        ],
      ),
      content: Text(content, style: TextStyle(fontSize: 16)),
      actions: [
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
            if (onOk != null) onOk!();
          },
          child: Text("OK"),
        ),
      ],
    );
  }

  static void showCustomAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => CustomAlertDialog(
        title: "Login Failed",
        content: "Wrong email or password.\nPlease try again.",
        onOk: () {
          print("User pressed OK");
        },
      ),
    );
  }
}
