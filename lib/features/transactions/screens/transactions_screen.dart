import 'package:finance_manager/features/transactions/bloc/tranactions_bloc.dart';
import 'package:finance_manager/repositories/transactions_Repository.dart';
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
      create: (context) => TransactionBloc(TransactionsRepository())..add(LoadTransactions()),
      child: Scaffold(
        body: Column(
          children: [
            Text("Good Morning $username"),
            Text("$fullMonthName $year"),
            SizedBox(height: 40,),
            TransactionsListWidget()
          ],
        ),
      ),
    );
  }
}

class TransactionsListWidget extends StatefulWidget {
  const TransactionsListWidget({super.key});

  @override
  State<TransactionsListWidget> createState() => _TransactionsListWidgetState();
}

class _TransactionsListWidgetState extends State<TransactionsListWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        switch (state) {
          case TransactionLoading():
            return CircularProgressIndicator();
          case TranactionError():
            return Text(state.message);
          case TransactionLoaded():
            return ListView.builder(
              itemCount: state.transactions.length,
              itemBuilder: (context , index){
              final entry = state.transactions[index];
              return Text(entry.title);
            });
          default: return SizedBox();
        }
        
      },
    );
  }
}
