import 'package:flutter/material.dart';
import 'package:forntend/core/router/routes_string.dart';
import 'package:forntend/view/widget/custombutton.dart';
import 'package:forntend/view/widget/customtextfield.dart';

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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        //backgroundColor: Theme.of(context).primaryColor,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  vertical: 5,
                  horizontal: 20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
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
                              color: Theme.of(context).primaryColor,
                              size: 30,
                            ),
                          ),
                        ),
                        SizedBox(width: 75),
                        Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.build_rounded,
                            color: Theme.of(context).primaryColor,
                            size: 55,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 0),
                    Text(
                      "SA3DNY",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 0),
                    Customtextfield(
                      obscure: false,

                      label: 'Name',
                      controller: fullNameController,
                      icon: Icon(Icons.person),
                    ),
                    SizedBox(height: 0),
                    Customtextfield(
                      obscure: false,

                      label: 'Phone',
                      controller: phoneNumberController,
                      icon: Icon(Icons.phone),
                    ),
                    Customtextfield(
                      obscure: false,

                      label: 'Email',
                      controller: emailController,
                      icon: Icon(Icons.email),
                    ),

                    Customtextfield(
                      obscure: false,

                      label: 'Locaton',
                      controller: locationController,
                      icon: Icon(Icons.location_city),
                    ),

                    Customtextfield(
                      obscure: false,

                      label: 'Username',
                      controller: userNameController,
                      icon: Icon(Icons.person),
                    ),

                    Customtextfield(
                      obscure: true,

                      label: 'Password',
                      controller: passwordController,
                      icon: Icon(Icons.lock),
                    ),

                    Custombutton(
                      title: "Sign Up",
                      onPressd: () async {
                      
                    
                          //Navigator.pushReplacementNamed(context, RoutesString.dashboard);
                        
                      },
                    ),
                    SizedBox(height: 5),
                    TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, RoutesString.login);
                      },
                      child: Text(
                        "already have account",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          decoration: TextDecoration.underline,
                          decorationColor: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
