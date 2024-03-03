import 'package:cred_assignment/screens/cred_cash_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const CredCashScreen(),
              ),
            );
          },
          child: const Text('home'),
        ),
      ),
    );
  }
}
