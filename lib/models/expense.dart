import 'package:expense_tracker/models/compound_int.dart';

class Expense {
  static int lastId = 0;
  static int nextId() => lastId++;

  Expense({required this.title, required this.amount, required this.date});
  final int id = Expense.nextId();
  final String title;
  final CompoundInt amount;
  final DateTime date;
}
