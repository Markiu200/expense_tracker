import 'package:expense_tracker/models/compound_int.dart';

enum Category { food, travel, leisure, work }

class Expense {
  static int lastId = 0;
  static int nextId() => lastId++;

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  });
  final int id = Expense.nextId();
  final String title;
  final CompoundInt amount;
  final DateTime date;
  final Category category;
}
