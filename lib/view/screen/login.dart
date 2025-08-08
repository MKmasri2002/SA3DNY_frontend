import 'package:flutter/material.dart';
import 'package:forntend/core/router/routes_string.dart';
import 'package:forntend/provider/data_provider.dart';
import 'package:forntend/viewmodel/login_viewmodel.dart';
import 'package:forntend/view/widget/custombutton.dart';
import 'package:forntend/view/widget/customtextfield.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final bool success = false;

  Login({super.key});
  @override
  Widget build(BuildContext context) {
    final loginVM = Provider.of<LoginViewModel>(context);
    final dataP = Provider.of<DataProvider>(context, listen: false);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        //backgroundColor: Theme.of(context).primaryColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
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
                      icon: Icon(
                        Icons.arrow_back,
                        color: Theme.of(context).primaryColor,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(height: 0),
                  Icon(
                    Icons.build_rounded,
                    color: Theme.of(context).primaryColor,
                    size: 75,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "SA3DNY",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 90),
                  Customtextfield(
                    obscure: false,

                    label: 'Email',
                    controller: emailController,
                    icon: Icon(Icons.person),
                  ),

                  Customtextfield(
                    obscure: true,
                    label: 'password',
                    controller: passwordController,
                    icon: Icon(Icons.lock),
                  ),
                  SizedBox(height: 20),
                  Custombutton(
                    title: "login",
                    onPressd: () async {
                      await loginVM.login(
                        email: emailController.text,
                        password: passwordController.text,
                        dataProvider: dataP,
                      );
                      if (dataP.dataModel != null) {
                        Navigator.pushReplacementNamed(context, RoutesString.dashboard);
                      }
                    },
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, RoutesString.signup);
                    },
                    child: Text(
                      "don't have account",
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
    );
  }
}
