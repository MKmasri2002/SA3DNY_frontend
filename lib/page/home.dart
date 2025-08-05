import 'package:flutter/material.dart';
import 'package:forntend/customwidget/custombutton.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFebeef2),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xFF1D4ED8),
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 30, horizontal: 50),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsGeometry.fromSTEB(0, 0, 0, 16),
                  child: Icon(
                    Icons.build_rounded,
                    color: Colors.white,
                    size: 75,
                  ),
                ),
                Text(
                  "SA3DNY",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "Connect with skilled craftsman",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                SizedBox(height: 40),
                Custombutton(
                  title: 'Login',
                  onPressd: () {
                    Navigator.pushNamed(context, "/login");
                  },
                ),
                SizedBox(height: 10),
                Custombutton(title: 'Sign UP', onPressd: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
