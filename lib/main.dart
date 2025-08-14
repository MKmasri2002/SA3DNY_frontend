import 'package:flutter/material.dart';
import 'package:forntend/core/router/routers.dart';
import 'package:forntend/provider/user_provider.dart';
import 'package:forntend/viewmodel/login_viewmodel.dart';
import 'package:forntend/viewmodel/signup_viewmodel.dart';
import 'package:forntend/viewmodel/update_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => LoginViewModel()),
        ChangeNotifierProvider(create: (_)=> SignUpViewModel()),
        ChangeNotifierProvider(create: (_)=> UpdateViewModel())
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //primaryColor: Color.fromARGB(255, 6, 22, 63)),
        primaryColor: Color.fromARGB(255, 11, 96, 206),
      ),
      initialRoute: "/",
      routes: routes,
      
    );
  }
}
