import 'package:cred_assignment/logic/logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreditRequestAmountCollapsedWidget extends StatelessWidget {
  const CreditRequestAmountCollapsedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<AppStackCubit>().setPage(0),
      child: Container(
        color: Colors.amber,
        child: Column(
          children: [
            Text('selected amount'),
            SizedBox(height: 4),
            Text('₹1,28,000'),
          ],
        ),
      ),
    );
  }
}
