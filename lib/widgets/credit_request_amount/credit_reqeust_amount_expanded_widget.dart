import 'package:cred_assignment/logic/logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:neopop/widgets/buttons/neopop_button/neopop_button.dart';

class CreditRequestAmountExpandedWidget extends StatelessWidget {
  const CreditRequestAmountExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'tushar, how much do you want?',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 16),
          Text(
            'select any amount you want in your bank account',
            style: TextStyle(color: Color(0xff868686)),
          ),
          Spacer(),
          SizedBox(
            width: double.infinity,
            height: 48,
            child: NeoPopButton(
              onTapUp: () => context.read<AppStackCubit>().nextPage(),
              child: Center(
                child: Text(
                  'Choose your EMI plan →',
                  style: TextStyle(color: Color(0xff0d0d0d)),
                ),
              ),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
