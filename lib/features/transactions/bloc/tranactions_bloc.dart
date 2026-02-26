import 'package:bloc/bloc.dart';
import 'package:finance_manager/models/entry_model.dart';
import 'package:finance_manager/repositories/transactions_repository.dart';

part 'tranactions_event.dart';
part 'tranactions_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final TransactionsRepository _repository;
  TransactionBloc(this._repository) : super(TransactionInitial()) {
    on<LoadTransactions>((event, emit) async {
      emit(TransactionLoading());
      try{
        final transactions = await _repository.getAll();
        emit(TransactionLoaded(transactions));
      } catch(e){
        print(e);
        emit(TranactionError(e.toString()));
      }
    });
  }
}
