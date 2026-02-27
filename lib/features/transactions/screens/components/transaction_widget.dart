import 'package:finance_manager/models/category_model.dart';
import 'package:finance_manager/models/entry_model.dart';
import 'package:flutter/material.dart';


class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key,required this.category, required this.entry});
  final Entry entry;
  final TransactionCategory category;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.white),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(entry.title ,style : Theme.of(context).textTheme.titleSmall ), CustomCategoryLabel(category: category,)]),
          Text("${entry.amount.toStringAsFixed(2)}DZD" , style: Theme.of(context).textTheme.titleSmall,)
        ],
      ),
    );
  }
}

class CustomCategoryLabel extends StatelessWidget {
  const CustomCategoryLabel({super.key, required this.category});
  final TransactionCategory category;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: BoxBorder.all(color: category.color.withAlpha(140)),
        color: category.color.withAlpha(80),
      ),
      padding: EdgeInsets.symmetric(horizontal:6,vertical: 2),
      child: Text(
        category.name,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 6 , color: category.color),
      ),
    );
  }
}
