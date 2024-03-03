import 'package:cred_assignment/data/data.dart';
import 'package:cred_assignment/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SelectBankAccountExpandedWidget extends StatelessWidget {
  const SelectBankAccountExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'select your bank account',
            style: TextStyle(color: AppColors.whiteColor, fontSize: 20),
          ),
          const SizedBox(height: 16),
          const Text(
            'selected amount will be deposited to your savings account',
            style: TextStyle(color: AppColors.greyColor),
          ),
          const SizedBox(height: 32),
          AppButton(
            onTap: () => Navigator.pop(context),
            text: 'Done ✓',
          ),
        ],
      ),
    );
  }
}
