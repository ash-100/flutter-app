import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      required this.name,
      required this.onPressed,
      required this.minWidth})
      : super(key: key);
  final String name;
  final GestureTapCallback onPressed;
  final double minWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(16),
            minimumSize: Size(minWidth, 0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40))),
        onPressed: onPressed,
        child: Text(name),
      ),
    );
  }
}
