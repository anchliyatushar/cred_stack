import 'package:cred_assignment/data/data.dart';
import 'package:cred_assignment/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CredCashScreen extends StatelessWidget {
  const CredCashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.blackColor,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: AppColors.whiteColor,
            ),
          ),
        ),
        body: AppStack(
          itemLength: 3,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const AppStackModel(
                collapsedChild: CreditRequestAmountCollapsedWidget(),
                expandedChild: CreditRequestAmountExpandedWidget(),
              );
            }
            if (index == 1) {
              return const AppStackModel(
                expandedChild: EmiPlanExpandedWidget(),
                collapsedChild: EmiPlanCollapsedWidget(),
              );
            }
            return const AppStackModel(
              expandedChild: SelectBankAccountExpandedWidget(),
              collapsedChild: SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
