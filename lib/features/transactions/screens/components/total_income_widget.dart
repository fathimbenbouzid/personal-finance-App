import 'package:finance_manager/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TotalIncomeWidget extends StatelessWidget {
  const TotalIncomeWidget({super.key});

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
              color: AppColors.income.withAlpha(80),
            ),
            child: SvgPicture.asset(
              'assets/svg/arrow-narrow-down.svg',
              width: 21,
              colorFilter: ColorFilter.mode(AppColors.income, BlendMode.srcIn),
            ),
          ),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                "Income",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "1,600,000 DZ",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
