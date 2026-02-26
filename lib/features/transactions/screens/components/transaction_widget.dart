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
            children: [Text("Trnsaction title"), CustomCategoryLabel()]),
          Text("160.00DZD" , style: Theme.of(context).textTheme.titleSmall,)
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
      padding: EdgeInsets.all(2),
      child: Text(
        "Category",
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 8 , color: _color),
      ),
    );
  }
}
