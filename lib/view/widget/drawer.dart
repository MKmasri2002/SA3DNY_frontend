import 'package:flutter/material.dart';
import 'package:forntend/provider/user_provider.dart';
import 'package:forntend/core/router/routes_string.dart';
import 'package:forntend/view/widget/customcard.dart';

import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    return Drawer(
      backgroundColor: Color.fromARGB(255, 177, 174, 174),
      child: Column(
        children: [
          SizedBox(height: 15),
          CircleAvatar(radius: 40),
          SizedBox(height: 15),
          CustomCard(
            title: 'Profile',
            icon: Icons.person,
            onTap: () {
              Navigator.pushNamed(context, RoutesString.profile);
            },
          ),
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
              userProvider.logOut();

              Navigator.popUntil(
                context,
                ModalRoute.withName(RoutesString.welcome),
              );
            },
          ),
        ],
      ),
    );
  }
}
