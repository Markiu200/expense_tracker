import 'package:expense_tracker/models/compound_int.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

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

  String get formattedDate {
    return formatter.format(date);
  }
}

class ExpenseBucket {
  const ExpenseBucket({required this.expenses});

  ExpenseBucket.forCategory(List<Expense> allExpenses, category)
    : expenses = allExpenses.where((element) => false).toList();

  final List<Expense> expenses;

  CompoundInt get totalExpenses {
    CompoundInt sum = CompoundInt.zero();

    for (final expense in expenses) {
      sum += expense.amount;
    }

    return sum;
  }
}
