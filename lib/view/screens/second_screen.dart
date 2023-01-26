import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/screens/first_screen.dart';
import 'package:flutter_application_1/view/screens/terms_and_conditions_screen.dart';
import 'package:flutter_application_1/view/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Center(
            child: Text('Random text'),
          )),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TermsAndCondtionsScreen()));
            },
            child: Text('Terms and conditions'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                  name: 'Accept',
                  minWidth: MediaQuery.of(context).size.width / 3,
                  onPressed: () {
                    openWebsite(context);
                  }),
              CustomButton(
                  name: 'Reject',
                  minWidth: MediaQuery.of(context).size.width / 3,
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => FirstScreen()),
                        (route) => false);
                  })
            ],
          )
        ],
      )),
    );
  }

  void openWebsite(BuildContext context) async {
    String url = "https://www.google.co.in/";
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      var snackBar = SnackBar(content: Text('Cannot open website'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
