import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/constants/colors.dart';

import 'components/background.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
TextEditingController emailController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Background(
      size: size,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50,bottom: 30),
              alignment: Alignment.center,
                child: Text(
              "Login".toUpperCase(),
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            )),
            SvgPicture.asset(
              "assets/icons/login.svg",
            ),
            WidgetTextField(hintText: "Your Email",icon: Icon(Icons.person),controller:emailController ,),
          ],
        ),
      ),
    ));
  }
}

class WidgetTextField extends StatelessWidget {
 WidgetTextField({
    Key? key,required this.hintText,required this.icon,required this.controller,
  }) : super(key: key);
final String hintText;
final Icon icon ;
TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
     controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          fillColor: kPrimaryLightColor,
          filled: true,
          disabledBorder: InputBorder.none,
          border: InputBorder.none,
prefixIcon: icon,
        ),

    );
  }
}
