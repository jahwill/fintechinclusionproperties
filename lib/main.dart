import 'package:fintechinclusionproperties/routes/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:fintechinclusionproperties/imported_files.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mais Properties',
      theme: Apptheme.themeData().copyWith(platform: TargetPlatform.android),
      home: SplashScreen(),
    );
  }
}
