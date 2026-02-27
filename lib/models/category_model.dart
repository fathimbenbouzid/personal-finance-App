import 'package:flutter/material.dart';

class TransactionCategory {
  int? id;
  String name;
  String icon;
  Color color;
  bool? isIncome;
  TransactionCategory({
    required this.name,
    required this.icon,
    required this.color,
    this.isIncome,
  });
  TransactionCategory.fromMap(Map<String, dynamic> map)
    : id = map['id'],
      name = map['name'] ?? '',
      icon = map['icon'] ?? '',
      isIncome = map['isIncome'],
      color = Color(int.parse(map['color'], radix: 16) + 0xFF000000);
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'icon': icon,
      'color': color,
      'isIncome': isIncome,
    };
  }

  Color hexToColor(String hex) {
    hex = hex.replaceAll('#', '');
    return Color(int.parse(hex, radix: 16) + 0xFF000000);
  }
}
