import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Groceries',
        amount: 100.00,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Flutter Course',
        amount: 50.00,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Flight to London',
        amount: 500.00,
        date: DateTime.now(),
        category: Category.travel),
    Expense(
        title: 'Beach Resort',
        amount: 300.00,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'Groceries',
        amount: 100.00,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: 'Flutter Course',
        amount: 50.00,
        date: DateTime.now(),
        category: Category.work),
  ];

  void _openAddExpenseOverlay(){
    showModalBottomSheet(context: context, builder: (ctx) => const NewExpense(),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),],
      ),

      body: Column(
        children: [
          Text('The chart'),
          
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
