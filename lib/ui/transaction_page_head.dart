import 'package:flutter/material.dart';
import 'package:kite_bird_ui/widgets/transaction_page_head_totals_item.dart';

class TransactionPageHead extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .35,
      width: double.infinity,
      color: Color.fromRGBO(27, 20, 100,1.0),
      child: Stack(
        children: <Widget>[
          // balance
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color.fromRGBO(83, 82, 237,1.0),
                    Color.fromRGBO(190, 46, 221,1.0),
                  ]
                ),
              ),
              height: MediaQuery.of(context).size.height * .3,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Text(
                    'Ksh. 5,000.00',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white
                    ),
                  ),
                  
                  Text(
                    'Account Balance',
                    style: TextStyle(
                      // fontSize: 25,
                      color: Colors.white
                    ),
                  ),

                ],
              ),
            ),
          ),

          // totals detail card
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: Color.fromRGBO(72, 52, 212,1.0),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              width: MediaQuery.of(context).size.width * .85,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Received
                    TransactionPageHeadTotalsItem(label: 'Received', value: 'Ksh. 8,000',),

                    VerticalDivider(color: Colors.white60,),

                    // Balance
                    TransactionPageHeadTotalsItem(label: 'Balance', value: 'Ksh. 5,000',),

                    VerticalDivider(color: Colors.white60,),

                    // sent
                    TransactionPageHeadTotalsItem(label: 'Sent', value: 'Ksh. 3,000',)

                  ],
                ),
              ),
            ),
          )
        ],        
      ),
    );
  }
}