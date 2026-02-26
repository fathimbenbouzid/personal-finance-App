import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';

@Preview(
  name: 'transaction widget',
  textScaleFactor: 2,
  brightness: Brightness.light,
)
Widget previewTransactionWidget() => const TransactionWidget();

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({super.key});
  final int amount = 160; 
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
            children: [Text("Trnsaction title" ,style : Theme.of(context).textTheme.titleSmall ), CustomCategoryLabel()]),
          Text("${amount.toStringAsFixed(2)}DZD" , style: Theme.of(context).textTheme.titleSmall,)
        ],
      ),
    );
  }
}

class CustomCategoryLabel extends StatelessWidget {
  const CustomCategoryLabel({super.key});
  final Color _color = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: BoxBorder.all(color: _color.withAlpha(140)),
        color: _color.withAlpha(80),
      ),
      padding: EdgeInsets.symmetric(horizontal:6,vertical: 2),
      child: Text(
        "Category",
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 6 , color: _color),
      ),
    );
  }
}
