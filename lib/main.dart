import 'package:flutter/material.dart';
import 'package:tailor_landingpage/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ALHKYAT TAILORS',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const LandingPage(),
    );
  }
}
