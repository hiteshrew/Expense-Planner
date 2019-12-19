import 'package:expense_planner/models/transaction.dart';
import 'package:expense_planner/widgets/user_transaction.dart';
import './widgets/new_transaction.dart';
import 'package:expense_planner/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //DateTime.now() is a built in object that gives teh current time stamp

//String titleInput;
//String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: SingleChildScrollView(
              child: Column(
          mainAxisAlignment: MainAxisAlignment
              .start, //Starting position of items in column(vertically)
          crossAxisAlignment: CrossAxisAlignment
              .stretch, //Starting position of items in column(horizontally)
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                child: Text(
                  'Chart!',
                ),
                color: Colors.limeAccent,
                elevation: 5,
              ),
            ),
          UserTransaction()
          ],
        ),
      ),
    );
  }
}
