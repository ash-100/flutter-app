import 'package:flutter/material.dart';

class TermsAndCondtionsScreen extends StatelessWidget {
  const TermsAndCondtionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Terms and Conditions",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )),
          Text('Terms'),
        ],
      )),
    );
  }
}
