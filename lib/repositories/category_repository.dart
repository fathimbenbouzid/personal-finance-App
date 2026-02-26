import 'package:finance_manager/models/category_model.dart';
import 'package:finance_manager/models/entry_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CategoryRepository {
  final _client = Supabase.instance.client;

  Future<TransactionCategory> getById(int id) async {
    final response = await _client.from('Category').select()
      .eq('id', id).single();
    print(response);
    return TransactionCategory.fromMap(response);
  }
}
