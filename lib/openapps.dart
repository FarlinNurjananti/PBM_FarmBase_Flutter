import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/openapps2.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OpenApps2()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 100),
          ),
          Container(
            child: Image.asset(
              'assets/icon.png',
              scale: 3,
            ),
          ),
          Container(
            child: Image.asset(
              'assets/background.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
