import 'package:cred_assignment/screens/credit_amount_screen.dart';
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
                builder: (_) => const CreditAmountScreen(),
              ),
            );
          },
          child: const Text('home'),
        ),
      ),
    );
  }
}
