import 'package:cred_assignment/logic/app_stack_cubit.dart';
import 'package:cred_assignment/widgets/app_stack/app_stack.dart';
import 'package:cred_assignment/widgets/app_stack/app_stack_child_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreditAmountScreen extends StatelessWidget {
  const CreditAmountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppStack(
        itemLength: 3,
        itemBuilder: (context, index) {
          if (index == 0) {
            return AppStackChildView(
              collapsedChild: GestureDetector(
                onTap: () {
                  context.read<AppStackCubit>().setPage(index);
                },
                child: Text('Collapsed child view credit amount'),
              ),
              expandedChild: GestureDetector(
                onTap: () => context.read<AppStackCubit>().nextPage(),
                child: Center(
                  child: Text('Expanded child view credit amount'),
                ),
              ),
            );
          }
          if (index == 1) {
            return AppStackChildView(
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
          return AppStackChildView(
            expandedChild:
                Center(child: Text('Expanded child view bank account')),
            collapsedChild: SizedBox(),
          );
        },
      ),
    );
  }
}
