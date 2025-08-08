import 'package:flutter/material.dart';
import 'package:forntend/core/router/routes_string.dart';
import 'package:forntend/view/widget/custombutton.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 216, 216),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        //color: Theme.of(context).primaryColor,
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: 30, horizontal: 50),
          child: Column(
            children: [
              SizedBox(height: _height * 0.25),
              Padding(
                padding: EdgeInsetsGeometry.fromSTEB(0, 0, 0, 16),
                child: Icon(
                  Icons.build_rounded,
                  color: Theme.of(context).primaryColor,
                  size: 75,
                ),
              ),
              Text(
                "SA3DNY",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "Connect with skilled craftsman",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: _height * 0.2),
              Custombutton(
                title: 'Login',
                onPressd: () {
                  Navigator.pushNamed(context, RoutesString.login);
                },
              ),
              SizedBox(height: 10),
              Custombutton(
                title: 'Sign UP',
                onPressd: () {
                  Navigator.pushNamed(context, RoutesString.signup);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
