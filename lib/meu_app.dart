// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trackbet/pages/onboarding_page.dart';

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trackbet',
      theme: ThemeData(
        fontFamily: "Montserrat",
        primarySwatch: Colors.green,
      ),
      initialRoute: '/onboarding',
      routes: {
        '/onboarding': (context) => OnboardingPage(),
        // '/login': (context) => ,
      },
      home: const OnboardingPage(),
    );
  }
}
