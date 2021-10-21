import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:trackbet/meu_app.dart';

void main() async {
  await Firebase.initializeApp();
  runApp(const MeuApp());
}
