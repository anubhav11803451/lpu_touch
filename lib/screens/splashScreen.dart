import 'package:flutter/material.dart';
import 'package:lpu_touch/animations/colorfilter.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset('assets/images/touch_grey2.png'),
          ),
          Colorfilter(),
        ],
      ),
    );
  }
}
