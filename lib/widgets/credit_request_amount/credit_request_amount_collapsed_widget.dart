import 'package:cred_assignment/data/data.dart';
import 'package:flutter/material.dart';

class CreditRequestAmountCollapsedWidget extends StatelessWidget {
  const CreditRequestAmountCollapsedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
    );
  }
}
