// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trackbet/pages/login_page.dart';
import 'package:trackbet/pages/onboarding_page.dart';

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Trackbet',
        theme: ThemeData(
          fontFamily: "Montserrat",
          primarySwatch: Colors.green,
        ),
        // initialRoute: '/onboarding',
        routes: {
          '/onboarding': (context) => OnboardingPage(),
          '/login': (context) => LoginPage(),
        },
        home: OnboardingPage(),
      ),
    );
  }
}
