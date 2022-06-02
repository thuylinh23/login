import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key, required this.size, required this.child})
      : super(key: key);

  final Size size;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/main_top.png",
                width: size.width * 0.35),
          ),
          Positioned(
            child: Image.asset("assets/images/login_bottom.png",
                width: size.width * 0.35),
            bottom: 0,
            right: 0,
          ),
          child,
        ],
      ),
    );
  }
}
