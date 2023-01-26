import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/screens/second_screen.dart';
import 'package:flutter_application_1/view/widgets/custom_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CustomButton(
        name: 'Next',
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => SecondScreen()));
        },
      )),
    );
  }
}
