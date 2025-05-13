import 'package:expense_tracker/models/compound_int.dart';
import 'package:flutter/material.dart';

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
    return "${date.year}.${date.month}.${date.day}";
  }
}
