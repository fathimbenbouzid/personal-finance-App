import 'package:flutter/material.dart';

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
              color: Colors.red.withAlpha(120),
            ),
            child:Text("T") ,
          ),
          SizedBox(width: 8,),
          Column(
            crossAxisAlignment: .start,
            children: [
              Text("Monthly Income"), Text("1,600,000 DZ"),
            ],
          )],
      ),
    );
  }
}