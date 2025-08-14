import 'package:flutter/material.dart';
import 'package:forntend/core/router/routes_string.dart';
import 'package:forntend/view/screen/menu/aboutus.dart';
import 'package:forntend/view/screen/dashboard.dart';
import 'package:forntend/view/screen/menu/language.dart';
import 'package:forntend/view/screen/auth/login.dart';
import 'package:forntend/view/screen/menu/privacy/profile.dart';
import 'package:forntend/view/screen/menu/privacy/profileItem/editemail.dart';
import 'package:forntend/view/screen/menu/privacy/profileItem/editlocation.dart';
import 'package:forntend/view/screen/menu/privacy/profileItem/editname.dart';
import 'package:forntend/view/screen/menu/privacy/profileItem/editphone.dart';
import 'package:forntend/view/screen/serviceinfo.dart';
import 'package:forntend/view/screen/auth/signup.dart';
import 'package:forntend/view/screen/auth/welcome.dart';

Map<String, Widget Function(BuildContext)> routes = <String, WidgetBuilder>{
  RoutesString.welcome: (context) => Welcome(),
  RoutesString.signup: (context) => SignUp(),
  RoutesString.login: (context) => Login(),
  RoutesString.dashboard: (context) => Dashboard(),
  RoutesString.language: (context) => Language(),
  RoutesString.aboutus: (context) => AboutUs(),
  RoutesString.serviceInfo: (context) => ServiceInfo(),
  RoutesString.profile: (context) => Profile(),
  RoutesString.editname: (context) => EditName(),
  RoutesString.editphone: (context) => EditPhone(),
  RoutesString.editemail: (context) => EditEmail(),
  RoutesString.editlocation: (context) => EditLocation(),
  //RoutesString.editpassword: (context) => EditPassword(),
};
