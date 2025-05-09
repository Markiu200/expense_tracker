class Expense {
  static int lastId = 0;
  static int nextId() => lastId++;

  Expense({required this.title, required this.amount, required this.date});
  final int id = Expense.nextId();
  final String title;
  final double amount;
  final DateTime date;
}
