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

  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String newValue) {
        setState(() {
          dropdownValue = newValue;
        });
      },
      items: <String>['One', 'Two', 'Free', 'Four']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
    Card(
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
            //use dropdown selector for service, purchase, or sale
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
