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
      home: const OnboardingPage(),
    );
  }
}
