
import 'package:flutter/material.dart';

 class NewTransaction extends StatelessWidget {
  
  Function addTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return  Container(
              margin: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 5,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 1,
                        ),
                      ),
                      padding: EdgeInsets.all(5),
            child: Card( child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[

              TextField(
                decoration: InputDecoration(labelText: 'title'),
                controller: titleController,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'amount'),
                controller: amountController,
                
                ),
              
              TextButton( onPressed: () {
                addTransaction(titleController.text,double.parse(amountController.text));
                },
              child: Text('Add Transaction')),


            ],)
            ,),
          );

  }
}