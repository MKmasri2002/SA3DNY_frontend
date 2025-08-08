import 'package:flutter/material.dart';
import 'package:forntend/model/datamodel.dart';
import 'package:forntend/provider/data_provider.dart';
import 'package:forntend/viewmodel/login_viewmodel.dart';
import 'package:forntend/core/router/routes_string.dart';
import 'package:forntend/view/widget/customcard.dart';
import 'package:forntend/model/usermodel.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final dataP = Provider.of<DataProvider>(context, listen: false);
    return Drawer(
      backgroundColor: Color.fromARGB(255, 177, 174, 174),
      child: Column(
        children: [
          SizedBox(height: 15),
          CircleAvatar(radius: 40),
          SizedBox(height: 15),
          CustomCard(title: 'Profile', icon: Icons.person, onTap: () {}),
          CustomCard(
            title: 'Language',
            icon: Icons.language,
            onTap: () {
              Navigator.pushNamed(context, RoutesString.language);
            },
          ),
          CustomCard(
            title: 'Service History',
            icon: Icons.history,
            onTap: () {},
          ),
          CustomCard(
            title: 'About Us',
            icon: Icons.info,
            onTap: () {
              Navigator.pushNamed(context, RoutesString.aboutus);
            },
          ),
          CustomCard(
            title: 'Log out',
            icon: Icons.logout,
            onTap: () {
              dataP.logOut();
              //Navigator.pushReplacementNamed(context, RoutesString.welcome);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
