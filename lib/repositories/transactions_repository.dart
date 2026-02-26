import 'package:finance_manager/models/entry_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class TransactionsRepository {
  final _client = Supabase.instance.client;

  Future<List<Entry>> getAll() async{
    final response = await _client.from('Transaction').select('*, category:Category(*)');
    return response.map((map)=> Entry.fromMap(map)).toList();
  }
  Future<bool> addTransaction(Map<String,dynamic> data) async{
    try {
      await _client.from('Transaction').insert(data);
      return true;
    } catch (e) {
      print("-------------------------------***********{{{{{{{{{Error $e}}}}}}}}}***********-------------------------------");
      return false;
    }
  }
}