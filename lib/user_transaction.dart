import 'package:flutter/material.dart';
import 'package:lebne/new_transaction.dart';
import 'package:lebne/widgets/tansaction_list.dart';
import '../model/transaction.dart';





 class UserTransaction extends StatefulWidget {

  const UserTransaction({ Key? key }) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

   

class _UserTransactionState extends State<UserTransaction> {


  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly Groceries',
      amount: 16.53,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction( String txTitle, double txAmount){
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),);

    setState(() {
         _userTransactions.add(newTx);
      });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
         NewTransaction(_addNewTransaction),  
         TransactionList(_userTransactions),
      
      ],
    );
  }
}