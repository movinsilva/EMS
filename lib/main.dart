import 'package:ems/pages/home_page.dart';
import 'package:ems/pages/survey_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Employee management system',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Google-inter',
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

