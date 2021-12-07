import 'package:flutter/material.dart';
import 'package:smart_bip_quotation_mker1/Screens/home_page.dart';

import 'Screens/Splash Screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
