import 'package:flutter/material.dart';
import 'package:forntend/viewmodel/login_viewmodel.dart';
import 'package:provider/provider.dart';

class Custombutton extends StatelessWidget {
  final String title;
  final VoidCallback onPressd;

  const Custombutton({super.key, required this.title, required this.onPressd});

  @override
  Widget build(BuildContext context) {
    final loginVM = Provider.of<LoginViewModel>(context);

    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressd,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
        ),
        child: loginVM.isLoading
            ? CircularProgressIndicator(color: Colors.white)
            : Text(
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
