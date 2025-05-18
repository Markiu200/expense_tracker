import "package:flutter/material.dart";
import "package:expense_tracker/models/expense.dart";
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder:
          (context, index) => Dismissible(
            // Key is unique identifier for every widget. It is created here by
            // passing the expense, as we want to specify which widget must be
            // removed on a swipe.
            key: ValueKey(ExpenseItem(expense: expenses[index])),
            // Here you set what needs to be done "inside" the app, depending on
            // [direction] in which widget is swiped. Here it's ignored anyway.
            onDismissed: (direction) {
              onRemoveExpense(expenses[index]);
            },
            background: Container(
              color: Theme.of(context).colorScheme.error.withAlpha(192),
              margin: EdgeInsets.symmetric(
                horizontal: Theme.of(context).cardTheme.margin!.horizontal,
              ),
            ),
            child: ExpenseItem(expense: expenses[index]),
          ),
    );
  }
}
