import 'package:blood_bank_app/home.dart';
import 'package:blood_bank_app/registration.dart';
import 'package:blood_bank_app/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Registration(),
    );
  }
}
