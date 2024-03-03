import 'package:cred_assignment/data/colors.dart';
import 'package:cred_assignment/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CredApp extends StatelessWidget {
  const CredApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.blackColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.blackColor,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const HomeScreen(),
    );
  }
}
