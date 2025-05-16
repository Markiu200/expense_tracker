import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: Color.fromARGB(255, 220, 189, 252),
      ),
      home: Expenses(),
    ),
  );
}
