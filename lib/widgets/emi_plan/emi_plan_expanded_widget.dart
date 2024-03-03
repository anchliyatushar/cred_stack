import 'package:cred_assignment/data/data.dart';
import 'package:cred_assignment/logic/logic.dart';
import 'package:cred_assignment/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmiPlanExpandedWidget extends StatelessWidget {
  const EmiPlanExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'pick your EMI plan',
            style: TextStyle(color: AppColors.whiteColor, fontSize: 20),
          ),
          const SizedBox(height: 16),
          const Text(
            'one rate of interest for all options',
            style: TextStyle(color: AppColors.greyColor),
          ),
          const SizedBox(height: 32),
          AppButton(
            onTap: () => context.read<AppStackCubit>().nextPage(),
            text: 'Choose your bank account →',
          ),
        ],
      ),
    );
  }
}
