import 'package:finance_manager/models/category_model.dart';

class Entry {
  int? id;
  String title;
  String description;
  TransactionCategory? category;
  Entry({required this.title, required this.description});
  Entry.fromMap(Map<String, dynamic> map)
    : title = map['title'],
      description = map['description'],
      category = TransactionCategory.fromMap(map['category']);
}
