import 'package:cred_assignment/data/data.dart';
import 'package:cred_assignment/logic/logic.dart';
import 'package:cred_assignment/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreditRequestAmountExpandedWidget extends StatelessWidget {
  const CreditRequestAmountExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'tushar, how much do you\nwant?',
            style: TextStyle(color: AppColors.whiteColor, fontSize: 20),
          ),
          const SizedBox(height: 16),
          const Text(
            'select any amount you want in your bank account',
            style: TextStyle(color: AppColors.greyColor),
          ),
          const SizedBox(height: 32),
          AppButton(
            onTap: () => context.read<AppStackCubit>().nextPage(),
            text: 'Choose your EMI plan →',
          ),
        ],
      ),
    );
  }
}
