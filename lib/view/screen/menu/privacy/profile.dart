import 'package:flutter/material.dart';
import 'package:forntend/core/router/routes_string.dart';
import 'package:forntend/model/usermodel.dart';

import 'package:forntend/provider/user_provider.dart';
import 'package:forntend/view/widget/customcard.dart';
import 'package:provider/provider.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    UserModel? userModel = userProvider.userModel;
    //  ?? 
    // UserModel(
    //         id: "",
    //         name: "",
    //         phone: "",
    //         email: "",
    //         location: "", 
    //         token: '',
    //       );
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(radius: 40),
            SizedBox(width: double.infinity, height: 15),
            Text(
              userModel?.name ?? "",
              style: TextStyle(
                //color: Theme.of(context).primaryColor,
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: double.infinity, height: 15),
            CustomCard(
              title: userModel?.name ?? "",
              icon: Icons.person,
              onTap: () {
               
                Navigator.pushNamed(context, RoutesString.editname);
              },
            ),
            CustomCard(
              title: userModel?.phone ?? "",
              icon: Icons.phone,
              onTap: () {
                Navigator.pushNamed(context, RoutesString.editphone);
              },
            ),
            CustomCard(
              title: userModel?.email ?? "",
              icon: Icons.email,
              onTap: () {
                Navigator.pushNamed(context, RoutesString.editemail);
              },
            ),
            CustomCard(
              title: userModel!.location,
              icon: Icons.location_city,
              onTap: () {
                Navigator.pushNamed(context, RoutesString.editlocation);
              },
            ),
            CustomCard(
              title: "change password",
              icon: Icons.lock,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
