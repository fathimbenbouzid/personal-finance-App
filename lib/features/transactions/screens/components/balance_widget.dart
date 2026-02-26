import 'package:finance_manager/features/transactions/screens/components/total_expenses_widget.dart';
import 'package:finance_manager/features/transactions/screens/components/total_income_widget.dart';
import 'package:flutter/material.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: .symmetric(vertical: 16 , horizontal: 8),
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
          Text(
            "Your Total Balance",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text("1,600,000 DZ", style: Theme.of(context).textTheme.bodyLarge),
          SizedBox(height: 10,),
          Row(
            mainAxisSize: .max,
            children: [
              Expanded(child: TotalExpensesWidget()),
              Expanded(child: TotalIncomeWidget()),
            ],
          ),
        ],
      ),
    );
  }
}
