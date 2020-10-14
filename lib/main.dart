import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lpu_touch/theme/theme.dart';
import 'package:lpu_touch/screens/splashScreen.dart';

void main() {
  runApp(LPUTouch());
}

class LPUTouch extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'LPU Touch',
      debugShowCheckedModeBanner: false,
      theme: lighttheme(),
      darkTheme: darktheme(),
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}
