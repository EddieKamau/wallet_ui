import 'package:flutter/material.dart';
import 'package:kite_bird_ui/pages/transaction_page.dart';

void main(){ 
  runApp(Root());
}
 class Root extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: TransactionPage(),
     );
   }
 }
