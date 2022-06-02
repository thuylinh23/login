import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Function() onPressed;
  Color color;
  String text;
  Button(
      {Key? key,
      required this.onPressed,
      required this.color,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(text),
      style: ElevatedButton.styleFrom(primary: color, onPrimary: Colors.white),
    );
  }
}
