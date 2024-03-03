import 'package:cred_assignment/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CredApp extends StatelessWidget {
  const CredApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
