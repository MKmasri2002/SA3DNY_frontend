import 'package:flutter/material.dart';
import 'package:forntend/core/router/routes_string.dart';
import 'package:forntend/view/screen/aboutus.dart';
import 'package:forntend/view/screen/dashboard.dart';
import 'package:forntend/view/screen/language.dart';
import 'package:forntend/view/screen/login.dart';
import 'package:forntend/view/screen/serviceinfo.dart';
import 'package:forntend/view/screen/signup.dart';
import 'package:forntend/view/screen/welcome.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  RoutesString.welcome: (context) => Welcome(),
  RoutesString.signup: (context) => SignUp(),
  RoutesString.login: (context) => Login(),
  RoutesString.dashboard: (context) => Dashboard(),
  RoutesString.language: (context) => Language(),
  RoutesString.aboutus: (context) => AboutUs(),
  RoutesString.serviceInfo: (context) => ServiceInfo(),
};
