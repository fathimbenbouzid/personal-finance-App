import 'package:finance_manager/models/category_model.dart';

class Entry {
  int? id;
  String title;
  String description;
  double amount;
  TransactionCategory? category;
  Entry({required this.title, required this.description,required this.amount});
  Entry.fromMap(Map<String, dynamic> map)
    : title = map['title'],
      description = map['description'] ?? ' ',
      category = map['category'] != null
          ? TransactionCategory.fromMap(map['category'])
          : null,
      id = map['id'],
      amount = (map['amount'] as num).toDouble();
}
