import 'package:flutter/material.dart';
import 'package:forntend/controller/usercontroller.dart';
import 'package:forntend/customwidget/custombutton.dart';
import 'package:forntend/customwidget/customtextfield.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(width: 70),
                      Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.build_rounded,
                          color: Colors.white,
                          size: 55,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 5),
                  Text(
                    "SA3DNY",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Customtextfield(
                    obscure: false,

                    label: 'Name',
                    controller: fullNameController,
                    icon: Icon(Icons.person),
                  ),
                  SizedBox(height: 20),
                  Customtextfield(
                    obscure: false,

                    label: 'Phone',
                    controller: phoneNumberController,
                    icon: Icon(Icons.phone),
                  ),
                  SizedBox(height: 20),
                  Customtextfield(
                    obscure: false,

                    label: 'Email',
                    controller: emailController,
                    icon: Icon(Icons.email),
                  ),
                  SizedBox(height: 20),
                  Customtextfield(
                    obscure: false,

                    label: 'Locaton',
                    controller: locationController,
                    icon: Icon(Icons.location_city),
                  ),
                  SizedBox(height: 20),
                  Customtextfield(
                    obscure: false,

                    label: 'Username',
                    controller: userNameController,
                    icon: Icon(Icons.person),
                  ),
                  SizedBox(height: 20),
                  Customtextfield(
                    obscure: true,

                    label: 'Password',
                    controller: passwordController,
                    icon: Icon(Icons.lock),
                  ),
                  SizedBox(height: 15),
                  Custombutton(
                    title: "Sign Up",
                    onPressd: () async {
                      await UserController.signUp(
                        FullName: fullNameController.text,
                        phone: phoneNumberController.text,
                        email: emailController.text,
                        location: locationController.text,
                        username: userNameController.text,
                        password: passwordController.text,
                      );
                      if (!UserController.user.id.isEmpty) {
                        Navigator.pushReplacementNamed(context, "/dashboard");
                      }
                    },
                  ),
                  SizedBox(height: 5),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "already have account",
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
      ),
    );
  }
}
