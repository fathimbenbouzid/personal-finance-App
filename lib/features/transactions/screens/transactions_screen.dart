import 'package:finance_manager/features/transactions/bloc/tranactions_bloc.dart';
import 'package:finance_manager/features/transactions/screens/components/balance_widget.dart';
import 'package:finance_manager/features/transactions/screens/components/transactions_list_widget.dart';
import 'package:finance_manager/repositories/transactions_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class TransactionsScreen extends StatelessWidget {
  TransactionsScreen({super.key});
  final String username = 'Fathi';
  final String fullMonthName = DateFormat('MMMM').format(DateTime.now());
  final String year = DateFormat('yyyy').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          TransactionBloc(TransactionsRepository())..add(LoadTransactions()),
      child: Scaffold(
        backgroundColor: Color(0xffF3F7FF),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text("Good Morning $username" , style: Theme.of(context).textTheme.headlineLarge,),
              Text("$fullMonthName $year" , style: Theme.of(context).textTheme.headlineSmall,),
              SizedBox(height: 10),
              BalanceWidget(),
              SizedBox(height: 10),
              Text("Recent Transaction" , style: Theme.of(context).textTheme.headlineMedium,),
              SizedBox(height: 10),
              TransactionsListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
