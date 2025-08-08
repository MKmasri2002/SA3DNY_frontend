import 'package:flutter/material.dart';
import 'package:forntend/core/router/routers.dart';
import 'package:forntend/provider/data_provider.dart';
import 'package:forntend/viewmodel/login_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginViewModel()),
        ChangeNotifierProvider(create: (_) => DataProvider()),
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
        primaryColor: Color.fromARGB(255, 117, 209, 12),
      ),
      initialRoute: "/",
      routes: routes,
    );
  }
}
