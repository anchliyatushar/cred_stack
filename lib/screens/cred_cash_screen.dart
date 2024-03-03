import 'package:cred_assignment/logic/logic.dart';

import 'package:cred_assignment/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                expandedChild: GestureDetector(
                  onTap: () {
                    context.read<AppStackCubit>().nextPage();
                  },
                  child: Center(
                    child: Text('Expanded child view emi amount'),
                  ),
                ),
                collapsedChild: GestureDetector(
                    onTap: () {
                      context.read<AppStackCubit>().setPage(index);
                    },
                    child: Text('Collapsed child view emi amount')),
              );
            }
            return AppStackModel(
              expandedChild:
                  Center(child: Text('Expanded child view bank account')),
              collapsedChild: SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
