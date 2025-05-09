import "package:flutter/material.dart";

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Text("The chart"), Text("Expenses list")]),
    );
  }
}
