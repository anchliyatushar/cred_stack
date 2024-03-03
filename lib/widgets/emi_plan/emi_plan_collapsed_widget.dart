import 'package:cred_assignment/data/data.dart';
import 'package:flutter/material.dart';

class EmiPlanCollapsedWidget extends StatelessWidget {
  const EmiPlanCollapsedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'EMI',
              style: TextStyle(color: AppColors.darkGreyColor),
            ),
            SizedBox(height: 4),
            Text(
              '₹4,557 /mo',
              style: TextStyle(color: AppColors.greyColor),
            ),
          ],
        ),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'duration',
              style: TextStyle(color: AppColors.darkGreyColor),
            ),
            SizedBox(height: 4),
            Text(
              '36 months',
              style: TextStyle(color: AppColors.greyColor),
            ),
          ],
        ),
      ],
    );
  }
}
