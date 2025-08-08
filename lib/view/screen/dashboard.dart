import 'package:flutter/material.dart';
import 'package:forntend/view/widget/drawer.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key}); // ضروري تحط constructor

  @override
  Widget build(BuildContext context) {
    // تأكد إذا المستخدم موجود وخذ الاسم، وإلا رجّع "Guest"
    //final String name = UserController.user.fullName;

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
      body: Center(
        child: Text('Welcome, !', style: const TextStyle(fontSize: 24)),
      ),
    );
  }
}
