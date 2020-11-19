import 'dart:ui';

import './Widgets/newTransaction.dart';
import './Widgets/transactionList.dart';
import 'package:flutter/material.dart';
import './Models/transaction.dart';
import './Widgets/chart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.amber,
        fontFamily: 'Quicksand',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transaction> _userTransactions = [
    // Transaction(
    //   id: 'a1',
    //   title: 'Groceries',
    //   amount: 99.23,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: 'a2',
    //   title: 'Haircut',
    //   amount: 22.50,
    //   date: DateTime.now(),
    // ),
  ];
  List<Transaction> get _recentTransactions {
    return _userTransactions.where((thisTrans) {
      return thisTrans.date.isAfter(
        DateTime.now().subtract(
          Duration(days: 7),
        ),
      );
    }).toList();
  }

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void startAddNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (bCtx) {
          return NewTransaction(_addNewTransaction);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Expense App',
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => startAddNewTransaction(context),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //use select buttons to switch between time lengths
            //move chart to different page?
            //make chart do week,30 day,365,all time?
            //Chart(_recentTransactions),
            //TransactionList(_userTransactions),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => startAddNewTransaction(context),
      ),
    );
  }
}
/* make method so when adding transaction, searches for 
Client based on first last name using spandex as splitter
Adds transaction to client transaction list
search first, if found then add otherewise dont
catch exception if err. client not found, display create new client?

When client clicked, displays client info+ transactions with client,
Click on transaction to see all details. Editable transactions?

*/
/*
CREATE PROCEDURE ClientCheck
AS STRING CliFname, STRING CliLname
(
  BEGIN
  SELECT * FROM CLIENTS WHERE ClientFname=CliFname AND 
  ClientLname=CliLname;
  IF(NumebrOfResults==1){
    RUN PROCEDURE AddTransaction;
  }ELSE IF(numebrOfResults>1){
    send all results back to app to let user select which one to apply the transaction to
  }ELSE IF(numberOfResults<1){
    send a trigger back to app to trigger a method telling user 'none found, create new?' 
    with a create button.
  }
)
*/
