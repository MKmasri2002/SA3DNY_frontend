import 'package:flutter/material.dart';
import 'package:forntend/controller/usercontroller.dart';
import 'package:forntend/customwidget/custombutton.dart';
import 'package:forntend/customwidget/customtextfield.dart';

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final bool success = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back, color: Colors.white, size: 30),
                  ),
                ),
                SizedBox(height: 20),
                Icon(Icons.build_rounded, color: Colors.white, size: 75),
                SizedBox(height: 20),
                Text(
                  "SA3DNY",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Customtextfield(
                  obscure: false,
                 
                  label: 'Email',
                  controller: emailController,icon: Icon(Icons.person),
                ),
                SizedBox(height: 20),
                Customtextfield(
                  obscure: true,
                 label: 'password',
                  controller: passwordController, icon: Icon(Icons.lock),
                ),
                SizedBox(height: 20),
                Custombutton(
                  title: "login",
                  onPressd: () async {
                    await UserController.login(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                    if (UserController.user.fullName != '')
                      Navigator.pushReplacementNamed(context, "/dashboard");
                      
                  },
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {},           
                  child: Text(
                    "don't have account",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
