import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleCOntroller = TextEditingController();

  final amountCOntroller = TextEditingController();

  void submitData() {
    final enteredExpenseItem = titleCOntroller.text;
    final enteredAmount = double.parse(amountCOntroller.text);
    if (enteredExpenseItem.isEmpty || enteredAmount <= 0) {
      return;
    } else {
      widget.addTx(
        enteredExpenseItem,
        enteredAmount,
      );
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              controller: titleCOntroller,
              decoration: InputDecoration(labelText: 'Expense Item'),
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              controller: amountCOntroller,
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            FlatButton(
              onPressed: submitData,
              child: Text('Add Item'),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
