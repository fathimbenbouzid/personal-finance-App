import 'package:finance_manager/features/transactions/bloc/tranactions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class TransactionsListWidget extends StatefulWidget {
  const TransactionsListWidget({super.key});

  @override
  State<TransactionsListWidget> createState() => _TransactionsListWidgetState();
}

class _TransactionsListWidgetState extends State<TransactionsListWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
        width: double.infinity,
        child: Center(
          child: BlocBuilder<TransactionBloc, TransactionState>(
            builder: (context, state) {
              switch (state) {
                case TransactionLoading():
                  return CustominLoadingWidget();
                case TranactionError():
                  return ErrorWidget(message: state.message);
                case TransactionLoaded():
                  if (state.transactions.isEmpty) {
                    return EmptyListWidget();
                  } else {
                    return ListView.builder(
                      itemCount: state.transactions.length,
                      itemBuilder: (context, index) {
                        final entry = state.transactions[index];
                        return Text(entry.title);
                      },
                    );
                  }
                default:
                  return SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({super.key, required this.message});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        SvgPicture.asset('assets/svg/Error.svg', width: 150),
        Text(message),
      ],
    );
  }
}

class EmptyListWidget extends StatelessWidget {
  const EmptyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        SvgPicture.asset('assets/svg/NoDocuments.svg', width: 150),
        Text("No Recent Transactions"),
      ],
    );
  }
}

class CustominLoadingWidget extends StatelessWidget {
  const CustominLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        Lottie.asset(
          "assets/loading.json",
          width: 200,
          height: 200,
          fit: .contain
        ),
        Text("Loading Trnsactions"),
      ],
    );
  }
}
