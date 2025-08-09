import 'package:flutter/material.dart';
import 'package:forntend/view/widget/customText.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text("About Us"),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Icon(
                Icons.build_rounded,
                color: Theme.of(context).primaryColor,
                size: 80,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: CustomText(
                text: 'SA3DNY',
                size: 28,
                weight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            CustomText(
              text: 'Welcome to SA3DNY!',
              size: 22,
              weight: FontWeight.bold,
            ),

            const SizedBox(height: 10),
            CustomText(
              text:
                  'SA3DNY is an innovative platform designed to help users find reliable handymen and home service providers quickly and safely. We connect people with trusted professionals in fields such as plumbing, carpentry, electrical work, and more.',
              size: 16,
            ),
            const SizedBox(height: 20),
            CustomText(text: "Our Vision", size: 20, weight: FontWeight.bold),

            const SizedBox(height: 10),
            CustomText(
              text:
                  "We aim to become the leading platform in the Middle East for connecting customers with skilled workers in a professional, secure, and user-friendly way.",
              size: 16,
            ),

            const SizedBox(height: 20),
            CustomText(text: "Our Team", size: 20, weight: FontWeight.bold),

            const SizedBox(height: 10),
            CustomText(
              text:
                  "Team Leader: Eng. Mahmoud Almasri\nTeam Member: Shaimaa Daqamseh",
              size: 16,
            ),

            const SizedBox(height: 20),
            CustomText(text: "Our Values", size: 20, weight: FontWeight.bold),

            const SizedBox(height: 10),
            CustomText(
              text: "• Quality\n• Trust\n• Respect\n• Timely Service",
              size: 16,
            ),

            const SizedBox(height: 30),
            Center(
              child: CustomText(
                text: "Thank you for choosing SA3DNY",
                size: 18,
                weight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
