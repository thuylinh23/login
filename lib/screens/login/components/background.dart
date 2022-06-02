import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.size, required this.child})
      : super(key: key);

  final Size size;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/main_top.png"),
          ),
          Positioned(
            child: Image.asset("assets/images/login_bottom.png"),
            bottom: 0,
            left: 0,
          )
        ],
      ),
    );
  }
}
