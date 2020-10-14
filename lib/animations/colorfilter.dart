import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lpu_touch/screens/homeScreen.dart';

class Colorfilter extends StatefulWidget {
  @override
  _ColorfilterState createState() => _ColorfilterState();
}

class _ColorfilterState extends State<Colorfilter> {
  @override
  Widget build(BuildContext context) {
    Size size = Get.mediaQuery.size;
    return Stack(
      children: [
        TweenAnimationBuilder(
          duration: const Duration(seconds: 3),
          tween: ColorTween(begin: Colors.transparent, end: Colors.orange[200]),
          builder: (BuildContext context, Color color, Widget child) {
            return ColorFiltered(
              colorFilter: ColorFilter.mode(color, BlendMode.modulate),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 120, 0, 20),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    'assets/images/touchorange.png',
                    height: size.width * 0.26,
                  ),
                ),
              ),
            );
          },
          onEnd: () {
            Get.off(HomeScreen());
          },
        ),
        TweenAnimationBuilder(
          duration: const Duration(seconds: 3),
          tween: ColorTween(begin: Colors.transparent, end: Colors.white),
          builder: (BuildContext context, Color color, Widget child) {
            return ColorFiltered(
              colorFilter: ColorFilter.mode(color, BlendMode.modulate),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 240, 0, 20),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: RichText(
                    text: TextSpan(
                      text: 'LPU ',
                      style: Get.theme.textTheme.headline4,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Touch',
                          style: Get.theme.textTheme.headline5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
