import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/notepage.dart';
import 'package:flutter_application_1/notepage2.dart';
import 'package:flutter_application_1/openapps2.dart';
import 'package:flutter_application_1/register.dart';

import 'openapps.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/openapps2": (context) => const OpenApps2(),
        "/login": (context) => const LoginPage(),
        "/register": (context) => const RegisterPage(),
        "/homepage": (context) => const HomePage(),
        "/notepage": (context) => NotePage(),
        "/notepage2": (context) => NotePage2(),
        "/splash": (context) => SplashScreen(),
      },
      initialRoute: '/homepage',
    );
  }
}
