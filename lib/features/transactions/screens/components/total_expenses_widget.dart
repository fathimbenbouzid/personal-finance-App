import 'package:finance_manager/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TotalExpensesWidget extends StatelessWidget {
  const TotalExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Colors.white,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.expense.withAlpha(80),
            ),
            child:SvgPicture.asset('assets/svg/arrow-narrow-up.svg' , width: 21,colorFilter: ColorFilter.mode(AppColors.expense, BlendMode.srcIn),),
          ),
          SizedBox(width: 8,),
          Column(
            crossAxisAlignment: .start,
            children: [
              Text("Monthly Expenses" , style: Theme.of(context).textTheme.titleLarge,), Text("1,600,000 DZ" , style: Theme.of(context).textTheme.titleMedium,),
            ],
          )],
      ),
    );
  }
}
