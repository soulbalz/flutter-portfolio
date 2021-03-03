import 'package:flutter/material.dart';
import 'package:portfolio/screens/education.dart';
import 'package:portfolio/screens/home.dart';
import 'package:portfolio/screens/experience.dart';
import 'package:portfolio/screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peerachat\'s Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        '/education': (context) => EducationScreen(),
        '/experience': (context) => ExperienceScreen(),
      },
    );
  }
}
