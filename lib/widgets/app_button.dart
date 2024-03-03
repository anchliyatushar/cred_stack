import 'package:cred_assignment/data/data.dart';
import 'package:flutter/material.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const AppButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: NeoPopButton(
        color: Colors.white,
        onTapUp: onTap,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.blackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
