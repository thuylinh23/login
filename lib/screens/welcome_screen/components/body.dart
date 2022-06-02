import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login/screens/welcome_screen/components/background.dart';

import '../../../components/button.dart';
import '../../../constants/colors.dart';
import '../../login/login_screen.dart';
import '../../signup/signUp_screen.dart';
class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Background(
      size: size,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              alignment: Alignment.center,
              child: const Text(
                'WELCOME TO EDU',
                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, bottom: 20),
              child: SvgPicture.asset("assets/icons/chat.svg",
                  width: size.width * 0.8),
            ),
            Button(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:(_)=>LoginScreen()));
              },
              colorBackground: kPrimaryColor,
              colorText: Colors.white,
              text: 'Login'.toUpperCase(),
            ),
            const SizedBox(height: 20,),
            Button(
              onPressed: () {  Navigator.push(context, MaterialPageRoute(builder:(_)=>SignUpScreen()));},
              colorText: kPrimaryColor,
              colorBackground: kPrimaryLightColor,
              text: 'SignUp'.toUpperCase(),
            ),
          ],
        ),
      ),
    );
  }
}
