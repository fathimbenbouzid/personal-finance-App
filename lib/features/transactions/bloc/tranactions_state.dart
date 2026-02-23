part of 'tranactions_bloc.dart';

abstract class TransactionState {}

class TransactionInitial extends TransactionState {}
class TransactionLoading extends TransactionState {}
class TransactionLoaded extends TransactionState {
  final List<Entry> transactions;
  TransactionLoaded(this.transactions);
}
class TranactionError extends TransactionState {
  final String message;
  TranactionError(this.message);
}