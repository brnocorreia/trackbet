// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Buttom extends StatefulWidget {
  const Buttom({Key? key}) : super(key: key);

  @override
  _ButtomState createState() => _ButtomState();
}

class _ButtomState extends State<Buttom> {
  late final String text;
  late final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.green.shade900, // background
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
          onPressed;
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
