import 'package:cred_assignment/screens/cred_cash_screen.dart';
import 'package:cred_assignment/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: AppButton(
            text: 'Move to cred cash',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const CredCashScreen(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
