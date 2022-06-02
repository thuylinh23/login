import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Function() onPressed;
  Color colorBackground , colorText;
  String text;
  Button(
      {Key? key,
      required this.onPressed,
      required this.colorBackground,required this.colorText,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
        style: ElevatedButton.styleFrom(
          primary: colorBackground,
          onPrimary: colorText,
          padding:const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25),

          ),
        ),
      ),
    );
  }
}
