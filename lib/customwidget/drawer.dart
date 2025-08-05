import 'package:flutter/material.dart';
import 'package:forntend/controller/usercontroller.dart';
import 'package:forntend/customwidget/customcard.dart';
import 'package:forntend/model/user.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).primaryColor,
      child: Column(
        children: [
          SizedBox(height: 15),
          CircleAvatar(radius: 40),
          SizedBox(height: 15),
          CustomCard(title: 'Profile', icon: Icons.person, onTap: () {}),
          CustomCard(title: 'Language', icon: Icons.language, onTap: () {}),
          CustomCard(
            title: 'Service History',
            icon: Icons.history,
            onTap: () {},
          ),
          CustomCard(title: 'About Us', icon: Icons.info, onTap: () {}),
          CustomCard(
            title: 'Log out',
            icon: Icons.logout,
            onTap: () {
              UserController.user = User(
                id: '',
                fullName: '',
                phoneNumber: '',
                email: '',
                location: '',
                password: '',
                userName: '',
                role: '',
              );
              Navigator.pushReplacementNamed(context, "/");
            },
          ),
        ],
      ),
    );
  }
}
