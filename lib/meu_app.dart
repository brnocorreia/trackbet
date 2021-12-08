// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trackbet/pages/initial%20pages/login_page.dart';
import 'package:trackbet/pages/initial%20pages/onboarding_page.dart';

import 'pages/inside app pages/dashboard_page.dart';

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
          primaryColor: Color(0xFF33443c),
        ),
        // initialRoute: '/onboarding',
        routes: {
          '/onboarding': (context) => OnboardingPage(),
          '/login': (context) => LoginPage(),
          '/dashboard': (context) => DashboardPage(),
        },
        home: OnboardingPage(),
      ),
    );
  }
}
