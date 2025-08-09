import 'package:flutter/material.dart';
import 'package:forntend/core/router/routes_string.dart';
import 'package:forntend/provider/data_provider.dart';
import 'package:forntend/view/widget/custombutton.dart';
import 'package:forntend/view/widget/drawer.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key}); // ضروري تحط constructor

  @override
  Widget build(BuildContext context) {
    // تأكد إذا المستخدم موجود وخذ الاسم، وإلا رجّع "Guest"

    final dataP = Provider.of<DataProvider>(context);
    String name = "guest";
    if (dataP.dataModel != null) {
      name = dataP.dataModel!.userModel != null
          ? dataP.dataModel!.userModel.fullName
          : "guest";
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: SafeArea(child: CustomDrawer()),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcom $name!",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 300),
              Custombutton(
                title: "Request a service",
                onPressd: () {
                  Navigator.pushNamed(context, RoutesString.serviceInfo);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
