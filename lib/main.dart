import 'package:flutter/material.dart';
import 'package:forntend/page/dashboard.dart';
import 'package:forntend/page/home.dart';
import 'package:forntend/page/login.dart';
import 'package:forntend/page/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF1D4ED8),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => Home(),
        "/login": (context) => Login(),
        "/dashboard": (context) => Dashboard(),
        "/signup": (context) => SignUp(),
      },
    );
  }
}
