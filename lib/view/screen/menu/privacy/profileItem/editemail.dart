import 'package:flutter/material.dart';

import 'package:forntend/provider/user_provider.dart';
import 'package:forntend/view/widget/customalert.dart';

import 'package:forntend/view/widget/custombutton.dart';
import 'package:forntend/view/widget/customtextfield.dart';
import 'package:forntend/viewmodel/update_viewmodel.dart';
import 'package:provider/provider.dart';

class EditEmail extends StatelessWidget {
  EditEmail({super.key});

  final TextEditingController controller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {

    final userProvider = Provider.of<UserProvider>(context);
    final updateViewModel = Provider.of<UpdateViewModel>(context);
    

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile Email"),
          foregroundColor: Colors.white,
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Email",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "This is the Email you would like other people to use\nreferring to you",
                style: TextStyle(
                  color: const Color.fromARGB(255, 77, 72, 72),
                  fontSize: 13,
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),
              Customtextfield(
                obscure: false,
                label: 'Enter new Email',
                controller: controller,
                icon: Icon(Icons.person),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.42),
              Custombutton(
                isLoading: updateViewModel.isloading,
                title: "Save",
                onPressd: () async {
                  await updateViewModel.update(
                    key: "email",
                    value: controller.text,
                    userProvider: userProvider,
                  );
                     
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
