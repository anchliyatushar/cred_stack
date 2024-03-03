import 'package:cred_assignment/data/data.dart';
import 'package:cred_assignment/logic/logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmiPlanCollapsedWidget extends StatelessWidget {
  const EmiPlanCollapsedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: AppColors.borderColor),
          left: BorderSide(color: AppColors.borderColor),
        ),
      ),
      child: GestureDetector(
        onTap: () => context.read<AppStackCubit>().setPage(1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'selected amount',
              style: TextStyle(color: AppColors.darkGreyColor),
            ),
            SizedBox(height: 4),
            Text(
              '₹1,28,000',
              style: TextStyle(color: AppColors.greyColor),
            ),
          ],
        ),
      ),
    );
  }
}
