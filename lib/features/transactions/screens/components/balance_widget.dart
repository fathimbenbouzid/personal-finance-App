import 'package:finance_manager/features/transactions/screens/components/total_expenses_widget.dart';
import 'package:finance_manager/features/transactions/screens/components/total_income_widget.dart';
import 'package:flutter/material.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(50),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: .center,
        children: [
          Text("Your Total Balance"),
          Text("1,600,000 DZ"),
          Row(
            mainAxisSize: .max,
            children: [
              Expanded(child: TotalExpensesWidget()),
              Expanded(
                child: TotalIncomeWidget(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
