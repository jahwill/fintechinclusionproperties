//import 'dart:html';

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fintechinclusionproperties/imported_files.dart';
import 'package:fintechinclusionproperties/routes/auth/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    StartTime();
  }

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 150,
                    child: Image.asset('assets/images/fintech_properties.png'),
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 106.0, vertical: 7),
                      child: LinearProgressIndicator(
                          backgroundColor: Colors.grey[300])),
                ],
              ),
            ),

            Positioned(
              bottom: 30,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'Powered by FoodMoni',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primaryVariant,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quicksand',
                  ),
                ),
              ),
            ),
//
          ],
        ),
      ),
    );
  }

  StartTime() async {
    var duration = new Duration(seconds: 6);
    await new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }
}
