class TransactionCategory {
  int? id;
  String name;
  String icon;
  String color;
  bool? isIncome;
  TransactionCategory({
    required this.name,
    required this.icon,
    required this.color,
    this.isIncome,
  });
  TransactionCategory.fromMap(Map<String, dynamic> map)
    : id = map['id'],
      name = map['name'],
      icon = map['icon'],
      isIncome = map['isIncome'],
      color = map['color'];
  Map<String , dynamic> toMap(){
    return{
      'id':id,
      'name':name,
      'icon':icon,
      'color':color,
      'isIncome':isIncome
    };
  }
}
