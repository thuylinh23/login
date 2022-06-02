import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/constants/colors.dart';

import '../../components/button.dart';
import 'components/background.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background(
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
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, bottom: 20),
                child: SvgPicture.asset("assets/icons/chat.svg",
                    width: size.width * 0.8),
              ),
              Button(
                onPressed: () {},
                color: kPrimaryColor,
                text: 'Login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
