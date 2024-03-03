import 'package:cred_assignment/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CredCashScreen extends StatelessWidget {
  const CredCashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppStack(
          itemLength: 3,
          itemBuilder: (context, index) {
            if (index == 0) {
              return AppStackModel(
                collapsedChild: CreditRequestAmountCollapsedWidget(),
                expandedChild: CreditRequestAmountExpandedWidget(),
              );
            }
            if (index == 1) {
              return AppStackModel(
                expandedChild: EmiPlanExpandedWidget(),
                collapsedChild: EmiPlanCollapsedWidget(),
              );
            }
            return AppStackModel(
              expandedChild: SelectBankAccountExpandedWidget(),
              collapsedChild: SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
